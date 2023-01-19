# Autogenerated wrapper script for tree_sitter_julia_jll for x86_64-unknown-freebsd
export libtreesitter_julia

JLLWrappers.@generate_wrapper_header("tree_sitter_julia")
JLLWrappers.@declare_library_product(libtreesitter_julia, "libtreesitter_julia.so")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libtreesitter_julia,
        "lib/libtreesitter_julia.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
