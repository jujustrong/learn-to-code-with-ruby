# There are 3 ways to use the super keyword
# 1) Without parenthesees, super passes ALL subclass method's arguments
#    to the superclass's method.
# 2) With parenthesis and no argument, super passes no arguments
#     to the superclass's method.
# 3) With parentheses and arguments, super passes those arguments
#     to the superclass's method.

# class Car
#   def drive(speed)
#     "Vroom! speed at #{speed} mph"
#   end
# end

# class FireTruck < Car
#   def drive(speed)
#     super + " Beep! speed at #{speed} mph"
#   end
# end

# truck_1 = FireTruck.new
# puts truck_1.drive(45)

# ------------------------------------------------------------------------------

# class Car
#   def drive
#     "Vroom!"
#   end
# end

# class FireTruck < Car
#   def drive(speed)
#     super() + " Beep! speed at #{speed} mph"
#   end
# end

# truck_1 = FireTruck.new
# puts truck_1.drive(45)

# ------------------------------------------------------------------------------

class Car
  attr_reader :maker

  def initialize(maker)
    @maker = maker
  end
end

class FireTruck < Car
  attr_reader :siren_amount
  
  def initialize(maker, siren_amount)
    super(maker)
    @siren_amount = siren_amount
  end
end

truck_1 = FireTruck.new("Ford", 4)
puts truck_1.siren_amount
puts truck_1.maker



