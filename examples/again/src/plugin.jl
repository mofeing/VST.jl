using Base: @ccallable, UUID
using VST
using VST: PtrStruct
using StaticStrings
using Libdl

# NOTES
# - TUID is binary-equivalent to UUID
# - TUIDs taken from VST3 "AGain" example

const AGainProcessorUID = UUID(0x84E8DE5F92554F5396FAE4133C935A18)
const AGainWithSideChainProcessorUID = UUID(0x41347FD6FED64094AFBB12B7DBA1D441)
const AGainControllerUID = UUID(0xD39D5B65D7AF42FA843F4AC841EB04F0)

# auxiliary classes
struct FactoryInfo
    vendor::StaticString{64}
    url::StaticString{256}
    email::StaticString{128}
    flags::Int32
end

struct ClassInfo
    cid::StaticString{16}
    cardinality::Int32
    category::StaticString{32}
    name::StaticString{64}
end

# COM interfaces

# entry point
struct MyFactory
    # FUnknown methods
    query_interface::Ptr{Cvoid}
    addref::Ptr{Cvoid}
    release::Ptr{Cvoid}

    # IPluginFactory methods
    get_factory_info::Ptr{Cvoid}
    count_classes::Ptr{Cvoid}
    get_class_info::Ptr{Cvoid}
    create_instance::Ptr{Cvoid}

    # extra data
end

function MyFactory()
    # TODO C_NULL is not valid here
    MyFactory(
        dlsym(C_NULL, :query_interface),
        dlsym(C_NULL, :add_ref),
        dlsym(C_NULL, :release),
        dlsym(C_NULL, :get_factory_info),
        dlsym(C_NULL, :count_classes),
        dlsym(C_NULL, :get_class_info),
        dlsym(C_NULL, :create_instance),
    )
end

const MY_FACTORY::Union{Nothing,Ref{IPluginFactory3}} = nothing

@ccallable function GetPluginFactory()::Ptr{Cvoid}
    if isnothing(MY_FACTORY)
        # TODO init factory
    end
    return C_NULL
end

# FUnknown methods
@ccallable function query_interface(_::Ptr{FUnknown}, iid::UUID, obj::Ptr{Ptr{Cvoid}})::Cint
    return -1
end

@ccallable function addref(_::Ptr{FUnknown})::UInt32
    return 1
end

@ccallable function release(_::Ptr{FUnknown})::UInt32
    return 1
end

# IPluginFactory methods
@ccallable function get_factory_info(_::Ptr{IPluginFactory}, info::PtrStruct{FactoryInfo})::Cint
    info[] = FactoryInfo("mofeing", "https://github.com/mofeing/VST.jl", "nothing@none.com", 0)
    return 0
end

@ccallable count_classes(_::Ptr{IPluginFactory})::UInt32 = 0

@ccallable function get_class_info(_::Ptr{IPluginFactory}, index::UInt32, info::PtrStruct{ClassInfo})::Cint
    return -1
end

@ccallable function create_instance(_::Ptr{IPluginFactory}, cid::Ptr{Cvoid}, iid::Ptr{Cvoid}, obj::Ptr{Ptr{Cvoid}})::Cint
    return -1
end
