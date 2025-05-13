# bang methods end with a !
# bang methods perform some kind of mutation (a change)
# modifying the existing thing you are using the method on

word = "spaghetti"
new_word = word.capitalize
puts new_word
puts word

puts

word.capitalize!
puts word

word.upcase!
puts word
word.downcase!
puts word
word.reverse!
puts word

word.swapcase!
puts word