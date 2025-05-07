def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def calculator(a, b, operation)
  if operation == "add"
    add(a, b)
  elsif operation == "subtract"
    subtract(a, b)
  elsif operation == "multiply"
    multiply(a , b)
  else
    "That is not a valid operation!"
  end
end

puts calculator(3, 8, "add")
puts calculator(10, 50, "subtract")
puts calculator(5, 43, "multiply")
puts calculator(89, 2, "blah, blah, blah")



