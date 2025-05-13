# Loop - a series of instructions that is repeated until a
# terminating condition is reached

3.times { print "Hello " }

puts

count = 1
while count < 11
  puts count
  count += 1
end

puts 

letters = "a"
while letters.length < 5
  puts letters
  letters << "a"
end