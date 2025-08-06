# reverse - returns a new array with elements in reverse order
# This method does not mutate the original unless you use the BANG version of the method

p [1,2,3].reverse
p [true, true, false, false]

queue = [4, 8, 15, 16, 23, 42]
queue.reverse!
p queue