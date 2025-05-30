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