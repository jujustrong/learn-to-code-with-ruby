# block is a chunk of executable code that we attach to a method invocation

3.times { |number| puts "I am currently iterating in loop number #{number}" }

puts 

4.times do |number|
  puts "The current number is #{number} and its square is #{number*number}."
end

puts

names = ["bo", "moe", "joe"]
names.each { |name| puts name.capitalize! }

puts 

[1, 2, 3, 4, 5].each do |current_number|
  calc = current_number * current_number
  puts "The square of #{current_number} is #{calc}"
end