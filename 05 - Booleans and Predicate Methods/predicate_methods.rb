#predicate methods should end with a question mark
#predicate methods should return a boolean value
#predicate methods should be used to check the state of an object

puts 10.odd?
puts 10.even?
puts 5.odd?
puts 5.even?
puts 5.positive?
puts 5.negative?
puts 5.zero?
puts 0.zero?
puts 5.positive?.class
puts 5.negative?.class
puts 5.zero?.class
puts 0.zero?.class
puts 5.positive? == true
puts 5.negative? == false
puts 5.zero? == false
puts 0.zero? == true

# The following code is a simple example of using the `nil` object in Ruby.
# It demonstrates how to check if a variable is `nil` and how to use the `nil?` method.
my_variable = nil
puts my_variable.nil? # Output: true

# The following code demonstrates the use of the `empty?` method in Ruby.
# It checks if an array and a string are empty or not.
array = []
string = ""
puts array.empty?
puts string.empty?
# The following code demonstrates the use of the `include?` method in Ruby.
# It checks if a string contains a specific substring.
string = "hello world"
puts string.include?("hello")
puts string.include?("world")
puts string.include?("goodbye")
# The following code demonstrates the use of the `nil?` method in Ruby.
# It checks if a variable is nil or not.
my_variable = nil
puts my_variable.nil?
my_variable = 5
puts my_variable.nil?