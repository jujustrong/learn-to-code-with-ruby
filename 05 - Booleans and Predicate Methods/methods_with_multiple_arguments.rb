puts 20.between?(10, 30) # this method has an upperbound and a lowerbound value and returns true if the value is between them.
puts 20.between?(10, 15)

puts 1.2.between?(1.1, 1.3)
puts (-10).between?(-20, -5)
puts 1.2.between?(1.3, 1.1) # this method is not commutative, the order of the arguments matters
