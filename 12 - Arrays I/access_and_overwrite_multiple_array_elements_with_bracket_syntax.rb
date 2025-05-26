sesame_street = [
  "Elmo", 
  "Big Bird", 
  "Cookie Monster", 
  "Bert", 
  "Ernie", 
  "Oscar"
]

p sesame_street[0, 3]
p sesame_street[2, 4]
p sesame_street[3, 1]
p sesame_street[3, 10]

puts

p sesame_street.slice(0, 3) # Remember to use parenthesis with 'slice' method
p sesame_street.slice(2, 4)
p sesame_street.slice(3, 1)
p sesame_street.slice(3, 10)

puts 

sesame_street[3, 2] = ["Stinky", "Kermit"] # Replaces Bert and Ernie with Stinky and Kermit
p sesame_street

sesame_street[3, 2] = ["Bert", "Ernie", "Julia"] # This will push 'Oscar' down another index and add 'Julia' to that index
p sesame_street