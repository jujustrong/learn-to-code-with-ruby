def add_two_numbers(num1, num2)
  num1 + num2
end

#best practice if you are just returning something from a method in the last line is to omit the return statement
# This is called an implicit return value. The last evaluated expression in a method is automatically returned.
# This is a common Ruby idiom and makes the code cleaner and more readable.

def nothing
end


puts add_two_numbers(5, 10)