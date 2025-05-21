# Declare an empty_array method that returns an empty array
def empty_array
  empty_array = []
end


# Declare a three_colors method that returns an array with
# the strings of "red", "green", and "blue" (in that order)
def three_colors
  three_colors = [ "red", "green", "blue" ]
end


# Declare a five_favorite_numbers method that returns an
# array of 5 integers. The integers are up to you.
def five_favorite_numbers
  five_favorite_numbers = [ 8, 10, 17, 45, 99 ]
end

# -------------------------------------------------------------------------------
# Alternate Solutions

def empty_array
  []
end 

def three_colors
  %w[ red green blue ]
end

def five_favorite_numbers
  [ 5, 6, 2, 19, 386 ]
end