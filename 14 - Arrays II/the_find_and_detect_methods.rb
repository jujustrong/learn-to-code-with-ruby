# find/detect - find first array element that matches condition

words = ["dictionary", "refrigerator", "platypus", "microwave"]
p words.select { |word| word.include?("e")  } # creates a new array with the words matching the condition
p words.select { |word| word.include?("z")  } # returns an empty array 
p words.find { |word| word.include?("e")  }   # finds the first word that matches the condition and returns it as str
p words.detect { |word| word.include?("e")  }
p words.find { |word| word.include?("z")  }   # find and detect both return nil values if there is no matching value
p words.detect { |word| word.include?("z")  }