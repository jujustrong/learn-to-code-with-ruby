def paperwork(n, m)
  return 0 if n <= 0 || m <= 0
  n * m
end

# Alternate Solution

def paperwork(n, m)
  n >= 0 && m >= 0 ? n * m : 0
end

#---------------------------------------------------------------------------------

def past(h, m, s)
  ((m * 60) + (h * 3600) + s) * 1000
end

#---------------------------------------------------------------------------------

def positive_sum(arr)   # You get an array of numbers, return the sum of all positive ones. 0 if arr is empty
  count = 0
  arr.each do |i|
    if i > 0
      count += i
    else
      next
    end
  end
  count
end

# Alternate Solution

def positive_sum(arr)
  arr.select(&:positive?).sum
end

#---------------------------------------------------------------------------------

# Function that accepts a non-negative integer 'n' and a string 's' as parameters,
# and returns a string of 's' repeated exactly 'n' times.

def repeat_str(n, s)
  str = ""
  while n > 0
    str << s
    n -=1
  end
  str
end

# Alternate Solution

def repeat_str(n, s) # Much less logic and much more concise.
  s*n
end

#---------------------------------------------------------------------------------

def remove_exclamation_marks(s)
  s.delete('!')
end

# Alternate Version

def remove_exclamation_marks(s)
  # Create an empty string to store the result
  result = ""

  # Go through each character in the string
  s.each_char do |char|
    # Add the character to the result only if it's not an exclamation mark
    if char != "!"
      result += char
    end
  end

  # Return the new string without exclamation marks
  return result
end

#---------------------------------------------------------------------------------

def basic_op(operator, value1, value2) # Given an operator and 2 values, make a mini calculator
  case operator
  when "+"
    value1 + value2
  when "-"
    value1 - value2
  when "*"
    value1 * value2
  when "/"
    value1 / value2
  end
end

# Alternate Version

def basic_op(operator, value1, value2)
  value1.send(operator, value2)
end

#---------------------------------------------------------------------------------

def digitize(n) # Takes numbers, reverses them, and returns them in an array
  n.to_s.reverse.split("").map{ |x| x.to_i }
end

def digitize(n) # This does the same thing actually...
 n.digits 
end

#---------------------------------------------------------------------------------

def abbrev_name(name)         # Take in a string with a first and last name and return the initials of the name with a '.'
  abbrev = name.upcase.split  # in between the capitalized initials. --> H.G, J.A, A.A
  first_init = abbrev[0]
  sec_init = abbrev[1]
  "#{first_init[0]}.#{sec_init[0]}"
end

# Alternate Versions

def abbrev_name(name)
  name.split.map { |s| s[0]}.join('.').upcase
end

def abbrev_name(name)
		"#{name.split[0][0]}.#{name.split[1][0]}".upcase
end

#---------------------------------------------------------------------------------

def invert(list)    #Given an array of nums, return the additive inverse of each. pos -> neg, neg -> pos
  list.map { |x| x * -1 }
end

# Alternate Versions

def invert(list)
  list.map { |x| -x  }      # Essentially the same thing but with less code
end

#---------------------------------------------------------------------------------

def average(array)    # Calculates the average of the numbers in a given array. Empty arrays return 0
  array.empty? ? 0 : array.sum.to_f / array.length
end

# puts average([1, 3])
# puts average([1, 2, -3])
# puts average([0, 1])
# puts average([17, 16, 16, 16, 15, 17, 17, 15, 5, 17, 17, 16])
# puts average([])

#---------------------------------------------------------------------------------

def grow(x)           # Given a non-empty array, return the result of multiplying the values together in order.
  product = 1         # [1, 2, 3, 4] ==> 1 * 2 * 3 * 4 = 24
  x.each do |num|
    product *= num
  end
  product
end

# Alternate Versions

def grow(x)
  # Using the inject method
  # Loops through the array and carries forward a result, applying the block
  # Multiplies on each step 
  
  x.inject(1) { |product, num| product *= num }

  # Also can be used like this: x.inject(:*)
end

def grow(x)
  # Using the reduce method
  x.reduce(:*)

  # Also can be used like this: x.reduce do |x, y| x * y
end

#---------------------------------------------------------------------------------

#return an array where the first element is the count of positive nums and the second element
#is the sum of negative nums. 0 is neither pos or neg. If the arr is empty or null, return empty

def count_positives_sum_negatives(lst)
  return [] if lst.empty?
  [lst.select(&:positive?).count, lst.select(&:negative?).sum]
end

#---------------------------------------------------------------------------------

# Write a function bmi that calculates body mass index

def bmi(weight, height)
  bmi = weight / (height ** 2)
  return "Underweight" if bmi <= 18.5 
  return "Normal" if bmi <= 25.0 
  return "Overweight" if bmi <= 30.0 
  return "Obese"  if bmi > 30 
end

def bmi(weight, height)
  case weight / (height ** 2)
  when 0..18.5
    "Underweight"
  when 18.5..25.0
    "Normal"
  when 25.0..30.0
    "Overweight"
  else
    "Obese"
  end
end

#---------------------------------------------------------------------------------

# Define a function that removes duplicates from an array of non negative nums
# and returns it as a result.

def distinct(seq)
  seq.uniq
end

# Alternate solution (more in depth)

def distinct(seq)
  new_seq = []
  seq.each do |x|
    new_seq << x unless new_seq.include?(x)
  end
  new_seq
end

# puts distinct([1,1,1,1,3,5,70,84,2892,31,2,3,8,])

#---------------------------------------------------------------------------------

# ROCK PAPER SCISSORS or DRAW

def rps(p1, p2)

  return "Draw!" if p1.downcase == p2.downcase

  if (p1.downcase == "rock" && p2.downcase == "scissors") || (p1.downcase == "paper" && p2.downcase == "rock") || (p1.downcase == "scissors" && p2.downcase == "paper")
    "Player 1 won!"
  elsif (p2.downcase == "rock" && p1.downcase == "scissors") || (p2.downcase == "paper" && p1.downcase == "rock") || (p2.downcase == "scissors" && p1.downcase == "paper")
    "Player 2 won!"
  end
  
end

# Alternate solution using Beatmap

def rps(p1, p2)
  beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  if p1 == p2
    "Draw!"
  elsif beatmap[p1] == p2
    "Player 1 won!"
  else
    "Player 2 won!"
  end
end

#---------------------------------------------------------------------------------

# Given an arr of nums, check if any of the nums are the char codes for lower case vowels
# if they are, change the arr to a str of that value

def is_vow(a)
  codes = {
    97 => "a",
    101 => "e",
    105 => "i",
    111 => "o",
    117 => "u"
  }

  a.map do |num|
    codes.key?(num) ? codes[num] : num
  end
end

#---------------------------------------------------------------------------------

# Do addition and subtraction on a given string. The return value must also be a string

def calculate(str)
  expr = str.gsub("plus", "+").gsub("minus", "-")   #Using Eval. Eval is powerful and should not always be used since
  eval(expr).to_s                                   #it executes code. 
end   

def calculate(expression)
  # Step 1: Split into tokens (numbers and operators)
  tokens = expression.split(/(plus|minus)/)

  # Step 2: Initialize result with the first number
  result = tokens[0].to_i

  # Step 3: Loop through operators and following numbers
  i = 1
  while i < tokens.length
    operator = tokens[i]
    number = tokens[i + 1].to_i

    if operator == "plus"
      result += number
    elsif operator == "minus"
      result -= number
    end

    i += 2  # Move to the next operator
  end

  # Step 4: Return result as string
  result.to_s
end

#---------------------------------------------------------------------------------

#given a string of words, return the length of the shortest word(s)

def find_short(s)
  new_arr = s.split(" ")
  new_arr.map { |x| x.length  }.min
end

# print find_short("bitcoin take over the world maybe who knows perhaps")

#---------------------------------------------------------------------------------

#make a filter list that returns only the non strings in the list

def filter_list(l)
  new_lst = l.select { |n| !n.is_a?(String) }
end

#---------------------------------------------------------------------------------

#define a method that takes a string and returns the middle char if length is odd,
#or the middle 2 chars if length is even.

def get_middle(s)
  s[(s.size-1)/2..s.size/2]
end

def get_middle(s)
  center = s.size / 2
  s.size.odd? ? s[center] : s[(center-1)..center] 
end

#---------------------------------------------------------------------------------

# Define a method that takes an integer and returns its digits in descending order

def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i #this also works by just using "digits" instead of to_s and chars
end

#---------------------------------------------------------------------------------

# sum of 2 lowest positive integers

def sum_two_smallest_ints(numbers)
  puts num1 = numbers.sort!.shift
  puts num2 = numbers.sort!.first
  num1 + num2
end

 # min and max can also take parameters!

def sum_two_smallest_ints(numbers)
  numbers.min(2).sum
end

#---------------------------------------------------------------------------------

# FizzBuzz

def fizzbuzz(n)
  lst = []
  1.upto(n) { |x|
    if x % 3 == 0 && x % 5 == 0
      lst << "FizzBuzz"
    elsif x % 3 == 0 
      lst << "Fizz"
    elsif x % 5 == 0
      lst << "Buzz"
    else
      lst << x
    end
  }
  lst
end

def fizzbuzz(n)
  1.upto(n) { |i| puts i % 15 == 0 ? "FizzBuzz" : i % 3 == 0 ? "Fizz" : i % 5 == 0 ? "Buzz" : i }
end

#---------------------------------------------------------------------------------

# Define a function that makes up a UK drivers license number based on the 16 rules

def driver(data)
  
  name = data[2][0,5].ljust(5, "9").upcase
  initials = data[1].empty? ? "#{data[0][0]}#{data[1].ljust(1,"9")}" : "#{data[0][0]}#{data[1][0]}"
  year = data[3].split("-")[1]
  decade_digit = data[3].split("-")[2][2]
  year_digit = data[3].split("-")[2][3]
  day = data[3].split("-")[0]
  month_digit = ""
  gender = data[4]
  arbitrary_digit = 9
  check = "AA"

  if gender.upcase == "M"

    case
    when year.upcase.start_with?("JAN")
      month_digit = "01"
    when year.upcase.start_with?("FEB")
      month_digit = "02"
    when year.upcase.start_with?("MAR")
      month_digit = "03"
    when year.upcase.start_with?("APR")
      month_digit = "04"
    when year.upcase.start_with?("MAY")
      month_digit = "05"
    when year.upcase.start_with?("JUN")
      month_digit = "06"
    when year.upcase.start_with?("JUL")
      month_digit = "07"
    when year.upcase.start_with?("AUG")
      month_digit = "08"
    when year.upcase.start_with?("SEP")
      month_digit = "09"
    when year.upcase.start_with?("OCT")
      month_digit = "10"
    when year.upcase.start_with?("NOV")
      month_digit = "11"
    when year.upcase.start_with?("DEC")
      month_digit = "12"
    else
      puts "Please enter a valid month"
    end
  end

  if gender.upcase == "F"

    case 
    when year.upcase.start_with?("JAN")
      month_digit = "51"
    when year.upcase.start_with?("FEB")
      month_digit = "52"
    when year.upcase.start_with?("MAR")
      month_digit = "53"
    when year.upcase.start_with?("APR")
      month_digit = "54"
    when year.upcase.start_with?("MAY")
      month_digit = "55"
    when year.upcase.start_with?("JUN")
      month_digit = "56"
    when year.upcase.start_with?("JUL")
      month_digit = "57"
    when year.upcase.start_with?("AUG")
      month_digit = "58"
    when year.upcase.start_with?("SEP")
      month_digit = "59"
    when year.upcase.start_with?("OCT")
      month_digit = "60"
    when year.upcase.start_with?("NOV")
      month_digit = "61"
    when year.upcase.start_with?("DEC")
      month_digit = "62"
    else
      puts "Please enter a valid month"
    end
  end

  license_number = [name, decade_digit, month_digit, day, year_digit, initials, arbitrary_digit, check].join

end

# driver(["John","James","Smith","01-Jan-2000","M"])
# driver(["Johanna","","Gibbs","13-Dec-1981","F"])

#---------------------------------------------------------------------------------

# returns countdown arrays within a single array

def counter_effect(hit_count)
  total_lst = []
  count_lst = hit_count.chars
  num_lst = count_lst.map { |x| x.to_s.chars.map(&:to_i) }
  num_lst.each do |n|
    total_lst << [*0..n[0]] #creating range and turning into seperate arr
  end
  total_lst

end

def counter_effect(hit_count)
  hit_count.chars.map { |n| (0..n.to_i).to_a }
end

#---------------------------------------------------------------------------------

# Defining a method to loop through a character and its index
# Example:
# accum("abcd") -> "A-Bb-Ccc-Dddd"
# accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt") -> "C-Ww-Aaa-Tttt"

def accum(s)
  result = []

  s.chars.each_with_index do |char, index|
    first = char.upcase
    rest = char.downcase * index #makes the rest lowercase and repeats it 'index' times
    combined = first + rest
    result << combined
  end

  result.join('-')

end

# puts accum("abcd")

#Easier way with preds and built in methods
def accum(s)
  s.chars.each_with_index.map do |char, index|
    char.upcase + char.downcase*index
  end.join('-')
end

#---------------------------------------------------------------------------------

#Word scramble method (not first and last char)

def jumble(string)
  return string if string.length <= 3
  first = string[0]
  last = string[-1]
  middle = string[1..-2].chars.shuffle.join

  first + middle + last
end

# Alternative Method
def jumble(str)
  str.gsub(/(?<=\w)\w+(?=\w)/, &:reverse)
end

#---------------------------------------------------------------------------------

def switch_it_up(number)
  case
  when number == 1
    "One"
  when number == 2
    "Two"
  when number == 3
    "Three"
  when number == 4
    "Four"
  when number == 5
    "Five"
  when number == 6
    "Six"
  when number == 7
    "Seven"
  when number == 8
    "Eight"
  when number == 9
    "Nine"
  else
    "Zero"
  end
end

# Alternate Method - One liner

def switch_it_up(number)
  %w(Zero One Two Three Four Five Six Seven Eight Nine)[number]
end

#---------------------------------------------------------------------------------

# Word Reversal

def reverse_words(str)
  str.strip.split.map { |word| word.reverse }.join(" ")
end

# p reverse_words("This is an example!")

#---------------------------------------------------------------------------------

# Difference in cuboid volumes

def find_difference(a, b)
  difference = a.reduce(:*) - b.reduce(:*)
  difference.abs  
end

# puts find_difference([9, 7, 2], [5, 2, 2])

#---------------------------------------------------------------------------------

def disemvowel(str)
  new_str = []
  vowels = ["a", "e", "i", "o", "u"]
  str.each_char do |x|
    new_str << x unless vowels.include?(x.downcase)
  end

  new_str.join

end

# Shorter version using gsub and regex (still figuring this out)

def disemvowel(str)
  # the array in between the / / has the characters we are looking to match.
  # the "i" after the / / is a case check. It will check upper and lower case vowels.
  # the string is a gsub feature to replace the charcter with no space or anything you want.
  str.gsub(/[aeiou]/i, "")
end

def disemvowel(str)
  # Simple way to find and delete exact matches in the string.
  str.delete("aeiouAEIOU")
end