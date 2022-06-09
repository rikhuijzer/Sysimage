using PackageCompiler: create_sysimage

packages = ["Revise", "TestEnv"]
sysimage_path = "img.so"
precompile_execution_file = "precompile_execution.jl"

create_sysimage(packages; sysimage_path, precompile_execution_file)
