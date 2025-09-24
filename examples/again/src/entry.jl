using VST
using Base: @ccallable

global MODULE_COUNTER::Int = 0
global MODULE_HANDLE::Ptr{Cvoid} = C_NULL

@ccallable function InitModule()::Bool
    true
end

@ccallable function DeinitModule()::Bool
    true
end


@static if Sys.islinux() || Sys.isbsd()
    # https://github.com/steinbergmedia/vst3_public_sdk/blob/master/source/main/linuxmain.cpp

    @ccallable function ModuleEntry(handle::Ptr{Cvoid})::Bool
        global MODULE_COUNTER += 1
        if MODULE_COUNTER == 1
            global MODULE_HANDLE = handle
            InitModule()
        end
        return true
    end

    @ccallable function ModuleExit()::Bool
        global MODULE_COUNTER -= 1
        if MODULE_COUNTER == 0
            global MODULE_HANDLE = C_NULL
            DeinitModule()
        elseif MODULE_COUNTER < 0
            @warn "ModuleExit called more times than ModuleEntry"
            return false
        end
        return true
    end

elseif Sys.isapple()
    # https://github.com/steinbergmedia/vst3_public_sdk/blob/master/source/main/macmain.cpp

    @ccallable function bundleEntry(handle::Ptr{Cvoid})::Bool
        if handle != C_NULL
            global MODULE_COUNTER += 1
            # TODO save bundle refs (i.e. `handle`)?
            # TODO save bundle path globally
            if MODULE_HANDLE == C_NULL
                global MODULE_HANDLE = handle
            end
        end
        return true
    end

    @ccallable function bundleExit()::Bool
        global MODULE_COUNTER -= 1
        if MODULE_COUNTER == 0
            # TODO deref bundle refs
            DeinitModule()
        elseif MODULE_COUNTER < 0
            @warn "bundleExit called more times than bundleEntry"
            return false
        end
        return true
    end

elseif Sys.iswindows()
    # https://github.com/steinbergmedia/vst3_public_sdk/blob/master/source/main/dllmain.cpp

    @ccallable function InitDll()::Bool
        MODULE_COUNTER += 1
        if MODULE_COUNTER == 1
            InitModule()
        end
        return true
    end

    @ccallable function ExitDll()::Bool
        MODULE_COUNTER -= 1
        if MODULE_COUNTER == 0
            DeinitModule()
        elseif MODULE_COUNTER < 0
            @warn "ExitDll called more times than InitDll"
            return false
        end
        return true
    end

    # TODO DllMain
end
