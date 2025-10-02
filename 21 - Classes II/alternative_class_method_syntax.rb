#Compare this to class methods lesson syntax to understand what is going on

class Vehicle
  attr_reader :wheels, :passengers

  def initialize(wheels, passengers)
    @wheels = wheels
    @passengers = passengers
  end

  class << self
    def car
      self.new(4, 6)
    end

    def truck
      self.new(18, 2)
    end
  end

  

end

car = Vehicle.car
p car.wheels
p car.passengers

truck = Vehicle.truck
p truck.wheels
p truck.passengers