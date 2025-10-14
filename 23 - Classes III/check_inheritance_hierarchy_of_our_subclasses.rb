class Employee
  attr_reader :name
  attr_accessor :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi my name is #{name} and I am #{age} years old."
  end

end

class Manager < Employee
end

class Worker < Employee
end

puts Manager.superclass
puts Worker.superclass
puts Employee.superclass

p Manager.ancestors
p Worker.ancestors
p Employee.ancestors

puts 

puts Manager < Employee   # this is asking if manager is inherting from Employee
puts Worker < Employee
puts Employee < Worker
puts Manager < Object # Object is NOT the direct superclass for Manager, but it is further up the lineage
puts Manager < BasicObject