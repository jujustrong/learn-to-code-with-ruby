# select - filter array for elements that satisfy a condition
# reject - filter array for elements that do not satisfy a condition

words = ["racecar", "selfless", "sentences", "level"]

palindromes = words.select { |word| word.reverse == word }
puts palindromes

animals = ["cheetah", "cat", "lion", "elephant", "dog", "cow"]
# if the block returns true, then Ruby will REJECT that element (Exclude it)
# if the block returns false, then Ruby will INCLUDE that element
p animals.reject { |animal| animal.include?("c") }