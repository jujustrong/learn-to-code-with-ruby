# Require does not look into the directory first, it looks in the ruby instillation directory first.
# It imports from Ruby's import database first
# It only loads something once instead of several times like when we use load
# require_relative looks in the current directory first
# When using just Require, you will need the ./ before putting the directory name. 
# For both of these methods, the .rb is optional and you will not always see it.

puts "Welcome to the program"

require_relative "another_file.rb"
require_relative "another_file.rb"
require_relative "another_file.rb"

some_method
table = Table.new
puts table.class

# require "./another_file.rb"
# require "./another_file.rb" if 8 > 5


# puts "We've reached the end of our program."