# Autogenerated wrapper script for tree_sitter_julia_jll for x86_64-apple-darwin14
export libtreesitter_julia

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"
LIBPATH_default = "~/lib:/usr/local/lib:/lib:/usr/lib"

# Relative path to `libtreesitter_julia`
const libtreesitter_julia_splitpath = ["lib", "libtreesitter_julia.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtreesitter_julia_path = ""

# libtreesitter_julia-specific global declaration
# This will be filled out by __init__()
libtreesitter_julia_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtreesitter_julia = "@rpath/libtreesitter_julia.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"tree_sitter_julia")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libtreesitter_julia_path = normpath(joinpath(artifact_dir, libtreesitter_julia_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtreesitter_julia_handle = dlopen(libtreesitter_julia_path)
    push!(LIBPATH_list, dirname(libtreesitter_julia_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

