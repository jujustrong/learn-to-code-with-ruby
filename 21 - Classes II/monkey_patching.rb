# monkey_patching - adding functionality to an existing Ruby class
# You typically don't want to do this as it changes the functionality

class String

  def count_vowels
    self.downcase.count("aeiou")
  end
end

p "Hello".count_vowels
p "refrigerator".count_vowels

class Array
  def sorted?
    self == self.sort # As long as this program is running, we have switched the built in functionality for the sort method. Don't do this.
  end
end

p [1, 2, 3].sorted?
p [1, 3, 2].sorted?

# better to create a new string formatter class or array formatter class that accepts a string or array.