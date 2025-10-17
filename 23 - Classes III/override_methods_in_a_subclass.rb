# Defining a method in the subclass with the same name as a method in the superclass.
# The subclass method will WIN out

class Employee
  attr_reader :name
  attr_accessor :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old"
  end

end

class Manager < Employee

  def yell
    "Who's the boss? I'm the boss!"
  end

  def introduce   # Will override the initial introduce method that is in the Superclass!
    "My name is #{name} and I'm a manager."
  end
end

class Worker < Employee

  def clock_in(time)
    "Starting my shift at #{time} - #{name}"
  end

  def yell
    "I'm working! I'm working!"
  end
end



sally = Manager.new("Sally", 42)
puts sally.yell
puts sally.introduce

puts 

chuck = Worker.new("Chuck", 53)
puts chuck.introduce            # uses the superclass introduce method because there isn't one in the subclass.
puts chuck.clock_in("8:30AM")
puts chuck.yell