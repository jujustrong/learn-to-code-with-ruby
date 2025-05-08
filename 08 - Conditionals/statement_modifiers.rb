number = 10000
verified = true

if number > 5000 && verified
  puts "That's a huge number!"
end

puts "That's a huge number!" if number > 5000 && verified

another_number = 8

unless another_number > 10 # execute if false
  puts "Another number is NOT greater than 10"
end

puts "Another number is NOT greater than 10" unless another_number > 10