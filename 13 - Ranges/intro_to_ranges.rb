# range - sequence of numbers or letters in order

inclusive_nums = 1..5 # closed range (5 will be included)
exclusive_nums = 1...5 # open range (5 will be excluded)

puts inclusive_nums.class
puts exclusive_nums.class

puts inclusive_nums.first
puts exclusive_nums.first
puts inclusive_nums.last
puts exclusive_nums.last

puts

p inclusive_nums.first(3)
p exclusive_nums.first(3)

p inclusive_nums.last(3)
p exclusive_nums.last(3) # will not include the 5 element

# Using a parameter on first or last methods will always return an array. If there is no value, it returns just the element
p inclusive_nums.last(1)
p exclusive_nums.last(1)

puts

p (2..10).last # Use parenthesis to be able to distinguish individual elements and the whole range.
p (5..13).last(2)