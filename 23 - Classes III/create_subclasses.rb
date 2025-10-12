# Define a subclass with the < symbol followed by the superclass.
# Think of the subclass as a specialized type of the superclass.

class Employee
  attr_reader :name
  attr_accessor :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end

end

ken = Employee.new("Ken", 35)
puts ken.class
puts ken.introduce
puts 

# ---------------------------------------------------------------------------------------------
class Manager < Employee
end

class Worker < Employee
end

bob = Manager.new("Bob", 48)
dan = Worker.new("Daniel", 26)

puts bob.class
puts dan.class
puts bob.introduce    # This introduce class method is inherited from the Employee class
puts dan.introduce
puts bob.age
puts dan.age