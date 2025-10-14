# Superclass class method - returns the superclass that class inherits from
# Ancestors class method - returns an array of all superclasses (plus extra stuff)

p 5.class
p 5.class.superclass
p 5.class.superclass.superclass
p 5.class.superclass.superclass.superclass
# p 5.class.superclass.superclass.superclass.superclass


puts

p 5.class.ancestors
p 3.14.class.ancestors
p "hello".class.ancestors
p [].class.ancestors