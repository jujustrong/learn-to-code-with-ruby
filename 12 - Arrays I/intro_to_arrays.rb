# An array is an ordered list of objects.
# 
# We often use the word "Elements" to describe the items inside the array
# 
# The array itself is an object.
# Think of a box in the real world.
# A box can hold mulitple items inside of it.
# The box is an object and the items inside of it are objects as well. 

numbers = [ 4, 8, 15, 16, 42 ] # This is an empty array
puts numbers.length
puts numbers.last
p numbers                      # using 'puts' on an array outputs each item on a different line in the output

things = [ 4, true, "Hello", 10.99 ]
p things

toys = [ "Teddy Bear", "Water gun", "Board game" ]
p toys

registration = [ true, true, false, true, false ]
p registration