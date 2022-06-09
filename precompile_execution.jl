using Pkg: Pkg
using Revise: revise
using TestEnv: TestEnv

mktempdir() do dir
    cd(dir) do
        dirname = "Tmp.jl"
        Pkg.generate(dirname)
        @show "activate"
        Pkg.activate(dirname)
        @show "using Tmp"
        # this errors; maybe later
        # @eval using Tmp
        revise()

        updated_code = """
            module Tmp
            f(x) = x
            end
            """
        # write(pathof(Tmp), updated_code)
        # revise()
    end
end
