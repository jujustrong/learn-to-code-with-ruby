story = "Once upon a time in a land far, far away..."

puts story[3, 10] #starts at index 3 and puts out the next 10 characters
puts story[27..39] #will start at index 37 and pull UP TO index 39
puts story.slice(27..39) #slice needs parenthesis

puts

puts story[27...39]
puts story.slice(27...39)

puts

puts story[27..200]
puts story.slice(27..200) #This will put every character until the end of the string even though the desired index exceeds the length

puts

puts story[32..-9]
puts story[32...-9]

puts

story[12..15] = "season"
puts story

puts

numbers = [1, 3, 5, 7, 9, 21, 18, 6]
p numbers[4..6]
p numbers.slice(4..6)