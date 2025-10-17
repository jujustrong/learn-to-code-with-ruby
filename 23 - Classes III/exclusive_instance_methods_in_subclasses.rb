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

# A subclass should be a specialized version of the superclass. Still able to do what the superclass can but provide specialized methods and functions.

class Manager < Employee

  def yell
    "Who's the boss? I'm the boss!"
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
puts chuck.introduce
puts chuck.clock_in("8:30AM")
puts chuck.yell