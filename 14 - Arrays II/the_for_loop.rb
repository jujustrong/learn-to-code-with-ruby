# for element in iterable data structure
# not used often in a work setting for Ruby Devs

# for number in [1, 2, 3]
#   puts number
# end


[1, 2, 3].each { |number| puts number}

# for value in 1..10
#   puts "Yay, we're iterating here!"
#   puts "We are currently on #{value}"
# end

# puts value

(1..10).each do |range_number|
  puts "Yay, we're iterating here!"
  puts "We are currently on #{range_number}"
end