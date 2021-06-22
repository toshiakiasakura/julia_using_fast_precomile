using PackageCompiler
using IJulia


precompile_statements_file=[
    joinpath(expanduser("~/.julia"), "ijuliacompile.jl")
]

sysimage_path=joinpath(
    expanduser("~/.julia"),
    "ijulia.dylib", 
    # extension should be ".dylib" for Mac, ".so" for linux ,
    # ".dll" for windows,
)

PackageCompiler.create_sysimage(
    [:IJulia, :Plots],
    precompile_statements_file=precompile_statements_file,
    sysimage_path=sysimage_path,
)

option="-J"*sysimage_path
installkernel("Julia plotfast",option)

