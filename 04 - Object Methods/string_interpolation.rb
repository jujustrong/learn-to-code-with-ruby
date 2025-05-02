name = "Julian"
puts "Hello, #{name}!" # string interpolation
# This will output: Hello, Julian!
# The string interpolation syntax is #{expression}, where expression can be any Ruby expression.
# The expression is evaluated and the result is inserted into the string.
# String interpolation is a powerful feature of Ruby that allows you to embed expressions inside string literals.
# It is a more readable and convenient way to construct strings compared to using string concatenation.
# String interpolation is only available in double-quoted strings or strings created with %Q.
# String interpolation is not available in single-quoted strings or strings created with %q.

age = 30
puts "I am #{age} years old." # string interpolation

puts "In 5 years, I will be #{age + 5} years old." # string interpolation with arithmetic operation
puts age # This will output: 30