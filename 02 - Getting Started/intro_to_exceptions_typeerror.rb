puts 3+4
puts "mis" + "fortune"

=begin
The 2 lines below will throw a TypeError meaning that the code is trying to do something that is not allowed.
The first line is trying to add a string and an integer together, which is not allowed in Ruby.
The second line is trying to add an integer and a string together, which is also not allowed in Ruby.
You can only add strings to strings and integers to integers.
If you want to add a string and an integer together, you need to convert the integer to a string first.
You can do this by using the .to_s method on the integer.
=end

puts "4" + 3  #comment these lines out if you want the program to run anything below these lines
puts 3 + "4"