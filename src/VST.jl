module VST

module API
using StaticStrings
include("API.jl")
end

include("Interfaces/Base.jl")
include("Interfaces/GUI.jl")
include("Interfaces/VST.jl")

end
