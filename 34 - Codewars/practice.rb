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

print find_short("bitcoin take over the world maybe who knows perhaps")

#---------------------------------------------------------------------------------

#make a filter list that returns only the non strings in the list

def filter_list(l)
  new_lst = l.select { |n| !n.is_a?(String) }
end