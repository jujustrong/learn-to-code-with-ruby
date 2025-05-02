# Class = A blueprint for creating objects
# Object = An instance of a class
# Class method = A method that is called on the class itself, not on an instance of the class
# Instance method = A method that is called on an instance of the class
# Class methods are defined using self.method_name or ClassName.method_name
# Instance methods are defined using def method_name

puts "hello".class # Output: String
puts 42.class # Output: Integer
puts [1, 2, 3].class # Output: Array
puts ({ name: "John", age: 30 }).class # Output: Hash

class Dog
  # Class method
  def self.bark
    puts "Woof!"
  end

  # Instance method
  def wag_tail
    puts "Wagging tail!"
  end
end

Dog.bark # Call class method
keibler = Dog.new # Create an instance of Dog
keibler.wag_tail # Call instance method

# The `self` keyword refers to the class itself when defining a class method.
# The `self` keyword refers to the instance of the class when defining an instance method.
# Class methods are used for functionality that is not specific to an instance of the class.
# Instance methods are used for functionality that is specific to an instance of the class.
# Class methods can be called without creating an instance of the class.
# Instance methods require an instance of the class to be called.
# Class methods are often used for utility functions or factory methods.
# Instance methods are used for behavior that is specific to an instance of the class.
# Class methods can be used to create instances of the class.