module COM

export @interface, @coclass, iid, IUnknown

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
    interfaces(::Type)

Get the list of interfaces implemented by a coclass type.
"""
function interfaces end

"""
    getvtable(::Type{Interface}, obj::CoClass) where {Interface, CoClass}

Get the vtable of the specified interface from a coclass instance.
"""
function getvtable(::Type{Interface}, obj::CoClass) where {Interface, CoClass}
    # @assert Interface ∈ interfaces(CoClass) "$Interface is not implemented by $CoClass"
    return _gen_getvtable(Interface, obj)
end

@generated function _gen_getvtable(::Type{Interface}, obj::CoClass) where {Interface, CoClass}
    vtable_field_name = Symbol(:vtable_, Interface)
    return :(obj.$vtable_field_name)
end

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

    vtable_sym = Symbol(name, "VTable")

    _methodlist = let _methods = copy(_methods)
        Base.remove_linenums!(_methods)
        map(_methods.args) do _methodname
            :($_methodname::$(Ptr{Cvoid}))
        end
    end

    vtable_expr = :(
        struct $(esc(vtable_sym))
            $(_methodlist...)
        end
    )

    return quote
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

# TODO support constructors?
# TODO support `mutable struct`
"""
    @coclass name <: Interface1[, Interface2, ...] begin
        field1::Type1
        field2::Type2
        ...
    end

Define a COM coclass (i.e. component class) `name` that implements the specified interfaces and has the given fields.
"""
macro coclass(class, fields)
    Meta.isexpr(class, :<:) || error("@coclass must inherit from at least one interface")
    Meta.isexpr(fields, :block) || error("fields must be a block")

    name = class.args[1]
    fields = fields.args

    interfaces = if Meta.isexpr(class.args[2], :tuple)
        class.args[2].args
    else
        [class.args[2]]
    end
    vtable_exprs = map(interfaces) do iface
        Expr(
            :(::),
            # left = field name
            Symbol(:vtable_, iface),
            # right = field type (requires evaluation)
            Expr(:$, Expr(:call, COM.vtable_type, iface)),
        )
    end

    return quote
        @eval struct $name
            $(vtable_exprs...)
            $(fields...)
        end

        # TODO generated constructor that initializes vtable fields

        $COM.interfaces(::Type{$(esc(name))}) = ($(interfaces...),)
        $COM.interfaces(::$(esc(name))) = interfaces($(esc(name)))
    end
end

# TODO in order to get function pointers of methods on itself... to be used for filling vtable fields
# using Libdl
# const RTLD_SELF = Ptr{Cvoid}(-2)
# dlsym(RTLD_SELF, :puts)

end
