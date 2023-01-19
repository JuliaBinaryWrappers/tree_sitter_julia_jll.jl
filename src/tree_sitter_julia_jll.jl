# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule tree_sitter_julia_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("tree_sitter_julia")
JLLWrappers.@generate_main_file("tree_sitter_julia", UUID("52be201e-a5e9-5cfe-8bf2-2dc4b062171c"))
end  # module tree_sitter_julia_jll
