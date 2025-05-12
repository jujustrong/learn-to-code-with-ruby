# Define a same_first_and_last_letter method that accepts a string. 
# The method should return true if the first and last character are equal, 
# and false otherwise.
# Assume the string will always have 1 or more characters.
#
# Examples:
# The => indicates the expected return value
#
# same_first_and_last_letter("runner")   => true
# same_first_and_last_letter("Runner")   => false
# same_first_and_last_letter("clock")    => false
# same_first_and_last_letter("q")        => true

def same_first_and_last_letter(str)
  str.slice(0) == str.slice(-1)
end

puts same_first_and_last_letter("runner")
puts same_first_and_last_letter("Runner")
puts same_first_and_last_letter("clock")

# Define a three_number_sum method that accepts a 3-character string.
# The method should calculate the sum of the digits of the string. 
# HINT: You’ll have to figure out a way to convert the
# string-ified digits to integers.
#
# Examples:
# The => indicates the expected return value
#
# three_number_sum("123")   => 6
# three_number_sum("567")   => 18
# three_number_sum("444")   => 12
# three_number_sum("000")   => 0

# def three_number_sum(strSum)
#   return nil unless strSum.length == 3 && strSum.match?(/^\d{3}$/)
#   strSum.chars.map(&:to_i).sum
# end

# puts three_number_sum("123")
# puts three_number_sum("567")
# puts three_number_sum("487")

# Easier Method for the second challenge

def three_number_sum(text)
  text[0].to_i + text[1].to_i + text[2].to_i
end

puts three_number_sum("123")
puts three_number_sum("567")
puts three_number_sum("487")