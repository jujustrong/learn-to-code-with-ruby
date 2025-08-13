# Block, procs, and lamdas are 3 different ways of representing chunks
# of code that can be passed and executed at a later time in combination with a method.

# Blocks are NOT objects. It happens once and then it is gone.

# Proc - an object representation of a block. They can be assigned to a variable

to_cubes = Proc.new { |number| number ** 3 } 
# to_cubes = Proc.new do |number|
#   number ** 3
# end
# to_cubes = proc { |number| number ** 3 }
# to_cubes = proc do |number|
#   number ** 3
# end

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 22, 33, 44, 55]

p a.map { |number| number ** 3}
p b.map { |number| number ** 3}
p c.map { |number| number ** 3}

puts 

p a.map(&to_cubes)
p b.map(&to_cubes)
p c.map(&to_cubes)