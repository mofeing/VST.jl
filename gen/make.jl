using Clang
using Clang.Generators

clap_include_dir = joinpath(@__DIR__, "..", "external", "vst3_c_api")

options = Clang.load_options(joinpath(@__DIR__, "generator.toml"))
args = Clang.get_default_args()

ctx = Clang.create_context(String[
        joinpath(clap_include_dir, "vst3_c_api.h"),
    ], args, options)

cd(@__DIR__) do
    Clang.build!(ctx)
end
