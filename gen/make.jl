using Clang
using Clang.Generators
using MacroTools: postwalk
using Runic

clap_include_dir = joinpath(@__DIR__, "..", "external", "vst3_c_api")

options = Clang.load_options(joinpath(@__DIR__, "generator.toml"))
args = Clang.get_default_args()

ctx = Clang.create_context(String[
        joinpath(clap_include_dir, "vst3_c_api.h"),
    ], args, options)

type_replacements = Dict(
    :Steinberg_int8 => :Cchar,
    :Steinberg_uint32 => :UInt32,
    :char16_t => :Int16,
    :Steinberg_uint8 => :UInt8,
    :Steinberg_uchar => :Cuchar,
    :Steinberg_int16 => :Int16,
    :Steinberg_uint16 => :UInt16,
    :Steinberg_int32 => :Int32,
    :Steinberg_int64 => :Int64,
    :Steinberg_uint64 => :UInt64,
    :Steinberg_TSize => :Int64,
    :Steinberg_tresult => :Int32,
    :Steinberg_TPtrInt => :UInt64,
    :Steinberg_TBool => :UInt8,
    :Steinberg_char8 => :Cchar,
    :Steinberg_char16 => :Int16,
    :Steinberg_tchar => :Int16,
    :Steinberg_CStringA => :(Ptr{Cchar}),
    :Steinberg_CStringW => :(Ptr{Int16}),
    :Steinberg_CString => :(Ptr{Int16}),
    :Steinberg_FIDString => :(Ptr{Cchar}),
    :Steinberg_UCoord => :Int32,
    :Steinberg_LARGE_INT => :Int64,
    :Steinberg_TUID => :(StaticString{16}),
    :Steinberg_Vst_TChar => :Int16,
    :Steinberg_Vst_CString => :(Ptr{Cchar}),
    :Steinberg_Vst_String128 => :(StaticString{128 * 2}), # UTF-16 encoding so *2
    :Steinberg_Vst_Sample32 => :Cfloat,
    :Steinberg_Vst_Sample64 => :Cdouble,
    :Steinberg_Vst_SampleRate => :Cdouble,
    :Steinberg_Vst_NoteExpressionValue => :Cdouble,
    :Steinberg_Vst_ParamValue => :Cdouble,
)

cd(@__DIR__) do
    Clang.build!(ctx, Clang.BUILDSTAGE_NO_PRINTING)

    # TODO write `using StaticStrings`

    for node in get_nodes(ctx.dag)
        orig_exprs = get_exprs(node)
        length(orig_exprs) == 0 && continue

        # remove dual typedef + enum in plural boilerplate
        # NOTE only `@cenum` seems to generate more than one Expr
        if Base.isexpr(orig_exprs[1], :macrocall) && orig_exprs[1].args[1] === Symbol("@cenum")
            name = string(orig_exprs[1].args[3].args[1])
            new_name = chopsuffix(name, "s")

            # rewrite enum name
            orig_exprs[1].args[3].args[1] = Symbol(new_name)

            # rewrite enum elements
            # NOTE also remove annoying 'k' prefix
            for enum_elem_expr in orig_exprs[2:end]
                enum_elem_expr.args[1] = replace(string(enum_elem_expr.args[1]), "_k" => "_", name => new_name) |> Symbol
            end
        end

        for orig_expr in orig_exprs
            expr = orig_expr
            Base.remove_linenums!(expr)

            # remove garbage intermediate types
            expr = postwalk(expr) do sym
                sym isa Symbol || return sym
                get(type_replacements, sym, sym)
            end

            # remove virtual table boilerplate
            if Base.isexpr(expr, :struct)
                # remove `Vtbl` suffix
                # expr.args[2] = chopsuffix(string(expr.args[2]), "Vtbl") |> Symbol

                # replace inherited methods from FUnknown class for composed FUnknown
                funknown_methods = [
                    :(queryInterface::Ptr{Cvoid}),
                    :(addRef::Ptr{Cvoid}),
                    :(release::Ptr{Cvoid}),
                ]
                ipluginbase_methods = [
                    :(initialize::Ptr{Cvoid}),
                    :(terminate::Ptr{Cvoid}),
                ]

                fields = expr.args[3]

                # process in reverse so that `pushfirst!` leaves the fields in the correct order
                if !endswith(string(expr.args[2]), "IPluginBaseVtbl") && ipluginbase_methods ⊆ fields.args
                    setdiff!(fields.args, ipluginbase_methods)
                    pushfirst!(fields.args, :(ipluginbase::IPluginBaseVtbl))
                end
                if !endswith(string(expr.args[2]), "FUnknownVtbl") && funknown_methods ⊆ fields.args
                    setdiff!(fields.args, funknown_methods)
                    pushfirst!(fields.args, :(funknown::FUnknownVtbl))
                end
            end

            # format enum & type names to PascalCase
            expr = postwalk(expr) do sym
                sym isa Symbol || return sym
                filter(!=('_'), string(sym)) |> Symbol
            end

            # strip annoying namespace prefixes
            expr = postwalk(expr) do sym
                sym isa Symbol || return sym
                chopprefix(string(sym), "Steinberg") |> Symbol
            end

            expr = postwalk(expr) do sym
                sym isa Symbol || return sym
                chopprefix(string(sym), "Vst") |> Symbol
            end

            # TODO revise this is ok (add a check)
            expr = postwalk(expr) do sym
                sym isa Symbol || return sym
                replace(string(sym), "EventEvent" => "Event") |> Symbol
            end

            # apply changes
            orig_expr.args = expr.args
        end
    end

    Clang.build!(ctx, Clang.BUILDSTAGE_PRINTING_ONLY)
end

Runic.format_file(joinpath(@__DIR__, "..", "src", "API.jl"); inplace=true)
