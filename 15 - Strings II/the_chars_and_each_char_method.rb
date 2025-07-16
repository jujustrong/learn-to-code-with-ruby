vehicle = "Spaceship"
characters = vehicle.split("")
p characters
characters = vehicle.chars
p characters

characters.each { |character| puts "#{character} is awesome" }

puts

vehicle.each_char { |character| puts "#{character} is awesome" }