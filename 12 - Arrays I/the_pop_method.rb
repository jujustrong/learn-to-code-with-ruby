# Removes the last element from an array and then returns the element back
# Mutates the actual array
# .pop can take arguments and will return the specified number of last elements as an array

bubble_tea_flavors = ["Honeydew", "Taro", "Mango", "Strawberry", "Caramel", "Peach"]
p bubble_tea_flavors

puts

last_element = bubble_tea_flavors.pop
p bubble_tea_flavors
p last_element

puts

p bubble_tea_flavors.pop(2)
p bubble_tea_flavors