animals = ["Lion", "Zebra", "Baboon", "Cheetah"]

i = 0

while i < animals.length #4
  puts i
  puts animals[i]
  i += 1
end

puts 

i = 0

until i == animals.length
  puts i
  puts animals[i]
  i += 1
end