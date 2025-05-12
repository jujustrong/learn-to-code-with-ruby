story = "Once upon a time in a land far, far away..."

puts story[5, 4] # this is saying to pull out the 5 letter starting from 0, and take 4 of the next characters
p story[0,5]
puts story[0, story.length] # this basically creates a copy of the string
puts story[-7, 5]

puts

puts story.slice(5, 4)
p story.slice(0,5)
puts story.slice(0, story.length)
puts story.slice(-7, 5)