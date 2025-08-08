# BLOCKS
# 
# A block is a chunk of code to execute
# An arguement is an object we pass as a method, while a block is a procedure (steps to follow)
# A block cannot exist without a method
# A block is a temporary construct.
# 
# BLOCKS VS METHODS
# 
# Methods can be invoked over and over.
# A block is used only once, then disappears.
# Methods capture the repeatable steps of a procedure.
# A block captures the custom step of a procedure.

[1, 2, 3].each { |val| p val }      # each is the method and the block is in the {}
p [1, 2, 3].map { |val| val ** 2 }