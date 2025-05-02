puts "Hi, what is your name?"
user_name = gets.chomp
puts "Hello, #{user_name}! Welcome to the Ruby world!"

# The `gets` method is used to get input from the user.
# The `chomp` method is used to remove the newline character from the input.
# The `gets` method returns a string that includes the newline character at the end.
# The `chomp` method removes the newline character from the string.
# The `gets` method is a built-in method in Ruby that reads a line from standard input.
# The `chomp` method is a built-in method in Ruby that removes the newline character from a string.
# The `gets` method is a blocking method, which means it will wait for the user to enter input before continuing.

puts "What is your age?"
user_age = gets.chomp.to_i
puts "You are #{user_age} years old!"

# The `to_i` method is used to convert the string input to an integer.
# The `to_i` method is a built-in method in Ruby that converts a string to an integer.
# If the string cannot be converted to an integer, it will return 0.