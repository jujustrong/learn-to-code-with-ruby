puts rand
puts rand.round(2)
puts rand.round(4)
puts rand.round(2) * 30

puts

puts rand(100) # this is a non inclusive method so you have to go one number above it to include the desired range
puts rand(101)
puts rand(1)

puts

puts rand(1..100) # This is INCLUSIVE because of the 2 dots.
puts rand(50...60) # This will never actually include 60