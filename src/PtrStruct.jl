struct PtrStruct{T}
    __ptrstruct_ptr::Ptr{T}
end

Base.pointer(ptr::PtrStruct) = ptr.__ptrstruct_ptr

"""
    Base.getproperty(ptr::PtrStruct{T}, name) where {T}

Get a field of the struct `T` by returning a pointer to that field.
"""
function Base.getproperty(ptr::PtrStruct{T}, name) where {T}
    if name == :__ptrstruct_ptr
        return getfield(ptr, :__ptrstruct_ptr)

    elseif name in fieldnames(T)
        fieldidx = findfirst(==(name), fieldnames(T))
        F = fieldtype(T, name)
        return PtrStruct{F}(Ptr{F}(ptr.__ptrstruct_ptr + fieldoffset(T, fieldidx)))

    else
        throw(FieldError(PtrStruct{T}, name))
    end
end

"""
    Base.getindex(ptr::PtrStruct{T}) where {T}

Dereference the pointer and return the value of type `T`.
"""
Base.getindex(ptr::PtrStruct) = unsafe_load(ptr.__ptrstruct_ptr)

"""
    Base.setindex!(ptr::PtrStruct{T}, value::T) where {T}

Set the value of type `T` by writing to the memory location.
"""
Base.setindex!(ptr::PtrStruct{T}, value::T) where {T} = unsafe_store!(ptr.__ptrstruct_ptr, value)
