# Trying to emulate the "each" method without using the existing "each" method.

# Example of what our method should accomplish
[10, 20, 30].each { |number| puts "The square of #{number} is #{number * number}" }
puts 



def custom_each(elements)
  i = 0                         # Since we cannot use the "each" method, we need to use a traditional loop like "While"

  while i < elements.length
    yield(elements[i])          # Need to pass this dynamic object "elements[i]" to a block. So we use the "Yield" keyword
    i += 1                      # incrementation to avoid infinite loops
  end

end

custom_each([10,20, 30]) { |number| puts "The square of #{number} is #{number * number}" }
puts

custom_each(["Boris", "Arnold", "Melissa"]) { |name| puts "The length of #{name} is #{name.length}" }