# each_with_index

colors = ["Red", "Blue", "Green", "Yellow"]

colors.each_with_index { |color, index| puts "#{color} is at index #{index}" }

puts 

[5, 10, 15].each_with_index do |num, i|
  puts "The number is #{num} and the index is #{i}"
  puts "The product of the two is #{num * i}"
end
