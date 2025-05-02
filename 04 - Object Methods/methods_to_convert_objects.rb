text = "8"
puts text
puts "text is currently a #{text.class}"
puts text.to_i
puts "text is now a #{text.to_i.class}"

puts text.to_f
puts text.to_f.class

puts

number = 5
puts number.class
puts number.to_s
puts "number is now a #{number.to_s.class}"

puts "5".to_s             #this is a great example of polymorphism
puts "5".to_s.class
puts 10.to_i
puts 10.to_i.class
puts 99.99.to_f
puts 99.99.to_f.class