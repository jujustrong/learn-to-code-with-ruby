# Define a word_frequency method that accepts a piece of text.
# Return a hash with a count of the number of times each word
# appears within the text. The hash keys should be the words
# and the values should be their counts. Assume the text will
# be in all lowercase.
#
# Examples:
# The => indicates the expected return value
# word_frequency("blue red blue green")  => {"blue"=>2, "red"=>1, "green"=>1}
# word_frequency("a land far far away")  => {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
# word_frequency("")                     => {}

def word_frequency(txt)
  frequency = Hash.new(0)  # Creates a new hash instead of using frequency = {}. Default value for the encountered key is 0.
  words = txt.split
  words.each do |word|
    frequency[word] += 1
  end

  frequency
end

# Alternate Method

def word_frequency(txt)
  words = txt.downcase.gsub(/[.,!?]/, '').split(" ")
  words.tally
end


puts word_frequency("blue red blue green")
puts word_frequency("a land far far away")