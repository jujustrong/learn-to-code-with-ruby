fives = [5, 10, 15, 20, 25, 30, 35, 40]

fives.each { |value| puts value if value.even? }

puts 

evens = []
fives.each { |val| evens << val if val.even?}
p evens
