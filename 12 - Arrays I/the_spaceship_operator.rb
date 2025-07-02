# Spaceship Operator <=>
# Very helpful for comparing sorted arrays
# can compare equality but also orders
# Returns -1, 0, 1, or nil


# Returns 0 if two vaules are equal
p 8 <=> 8
p [1,2,3] <=> [1,2,3]

# Returns -1 if the value on the left is smaller
p 1 <=> 5
p [1, 5, 8] <=> [1, 5, 10] # sorts through each element individually and compares to see what is bigger or earlier

# Returns 1 if the value on the left is greater
p 9 <=> 2
p [1, 4, 10] <=> [1, 4, 7]

# Returns nil if the values are incomparable
p 5 <=> [1, 2, 3]
p [nil, 1, 3] <=> [0, 1, 2]     # nil does NOT equal 0