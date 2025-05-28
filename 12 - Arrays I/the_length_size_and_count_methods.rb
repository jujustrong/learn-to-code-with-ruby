puts [1, 2, 3, 4, 5].length
puts ["Hi", "there", nil].length
puts [].length
# The size method is essentially an alias for the length method
puts [1, 2, 3, 4, 5].size
puts ["Hi", "there", nil].size
puts [].size

puts 

puts [1, 2, 3, 4, 5, 2].count     # This will give you back the number of elements in the array.
puts [1, 2, 3, 4, 5, 2].count(5)  # This will give back the number of times the element in the 
puts [1, 2, 3, 4, 5, 2].count(2)  # argument is in the array.