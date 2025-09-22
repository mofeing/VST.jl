module COM

export @interface, iid, IUnknown

"""
    iid(::Type)

Get the interface identifier (IID) of a COM interface type.
"""
function iid end

"""
    interface_type(::Type)

Get the interface type corresponding to a vtable type.
"""
function interface_type end

"""
    vtable_type(::Type)

Get the vtable type corresponding to an interface type.
"""
function vtable_type end

"""
    @interface name[<:T] UUID(...) begin
        method1
        method2
        ...
    end

Define a COM interface `name` with the specified interface identifier (IID) and methods.
"""
macro interface(name, _iid, _methods)
    # `IUnknown` is special... all must inherit from it
    _superinterface = nothing
    if Meta.isexpr(name, :<:)
        _superinterface = name.args[2]
        name = name.args[1]
    end

    abstype_expr = :(abstract type $name end)

    vtable_sym = Symbol(name, "Vtbl")

    _methodlist = let _methods = copy(_methods)
        Base.remove_linenums!(_methods)
        map(_methods.args) do _methodname
            :($_methodname::$(Ptr{Cvoid}))
        end
    end

    vtable_expr = :(struct $(esc(vtable_sym))
        $(_methodlist...)
    end)

    quote
        $Core.@__doc__ $abstype_expr
        $vtable_expr
        $COM.iid(::$Type{$(esc(name))}) = $_iid
        $COM.interface_type(::$Type{$(esc(vtable_sym))}) = $(esc(name))
        $COM.vtable_type(::$Type{$(esc(name))}) = $(esc(vtable_sym))
    end
end

@interface IUnknown UUID(0x00000000_00000000_C0000000_00000046) begin
    query_interface
    add_ref
    release
end

end
