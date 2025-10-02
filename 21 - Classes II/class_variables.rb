# Class variable - data that lives on a class rather than an instance
# Higher level or more important data
# Class methods and instance methods can both access class variable state at the top of the class

class Bicycle
  @@count = 0

  def self.count # Keeps a count of how many objects we have created and allows us to see that number
    @@count
  end

  def initialize  # increments the count everytime an object is made since initialize always runs in a new instance
    @@count += 1
  end

  def count
    @@count
  end

end


p Bicycle.count

b1 = Bicycle.new
Bicycle.new
Bicycle.new
Bicycle.new

p Bicycle.count
p b1.count