# super keyword - invoke method with same name in the superclass to add more functionality to the superclass method within the subclass.
# If we were to just override and name the new method with the same name, it would be completely replacing it.

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

class Manager < Employee
  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)    # Allows us to not have to repeat the initialize method we made in the parent class
    @rank = rank
  end

  def yell
    "Who's the boss? I'm the boss!"
  end

  def introduce
    result = super # Takes the functionality of the parent or superclass and then stores it as a variable.
    result + " I'm also a manager."
  end
end



sally = Manager.new("Sally", 42, "Senior Vice President")
puts sally.yell
puts sally.introduce
puts sally.rank
puts sally.name
puts sally.age
