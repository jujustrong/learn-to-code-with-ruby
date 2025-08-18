# This program will give the user various stats based on a sentence entered by the user.
# The program will display the sentence length, word count, most common word, and average word count

def word_counter
  print "Please enter a sentence: "
  user_sentence = gets.chomp
  sleep(1)
  puts "Loading sentence stats..."
  sleep(1)

  words = user_sentence.split(" ")
  word_count = Hash.new(0)
  puts "Total Characters in Sentence: #{words.length}"

  words.each do |word|
    word = word.downcase
    word_count[word] += 1
  end

  puts "Word Frequencies:"
  word_count.each do |word, count|
    puts "#{word}: #{count}"
  end

end

word_counter