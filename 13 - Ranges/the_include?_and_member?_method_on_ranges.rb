# checking to see if an object exists within a range

alphabet = "a".."z"

puts alphabet.include?("j")
puts alphabet.include?("z")
puts alphabet.include?("J") # the range was only listed for the lowercase alphabet

puts 

puts alphabet.member?("j")
puts alphabet.member?("z")
puts alphabet.member?("J")

puts

# === triple equals checks for inclusion

puts alphabet === "j"
puts alphabet === "z"
puts alphabet === "J"