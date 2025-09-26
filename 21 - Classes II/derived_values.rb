# Anti-pattern - a "pattern" to avoid when writing code

# Derived value - calculated/computed from another piece of state
# Try not to duplicate state. 

class Rectangle
  attr_accessor :height, :width
  attr_reader :area

  def initialize(height, width)
    @height = height
    @width = width
    # @area = height * width 
    # Derived value. Instead of doing this and having to make getter and setter methods, make an instance method
  end

  def area
    height * width
  end


end

r = Rectangle.new(3, 5)
p r.area

r.height = 10
p r.area

r.width = 8
p r.area