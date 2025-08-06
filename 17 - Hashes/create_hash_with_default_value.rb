numbers = {}
p numbers[:pi]

numbers = Hash.new("complete nonsense")
numbers[:pi] = 3.14
numbers[:pokemon] = 150
p numbers[:pi]
p numbers[:pokemon]

p numbers[:planets]
p numbers[:colors]