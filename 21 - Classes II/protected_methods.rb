# public methods - can be invoked by any other object
# 
# private methods - can only be invoked by internal methods
#
# protected methods - can only be invoked by interanal methods or 
# objects of the same class.

class Car 
  
  def initialize(age, miles)
    base_value = 20_000
    age_deduction = age * 1000
    miles_deduction = miles/10
    @value = base_value - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? "Your car is better" : "Your car is worse"
  end

  protected     # Works similar to private here where everything underneath is a 'protected' method that cannot be accessed from the outside.

  def value
    @value
  end

end

civic = Car.new(3, 30_000)
fiat = Car.new(1, 20_000)
dodge = Car.new(8, 100_000)

puts civic.compare_car_with(fiat)
puts civic.compare_car_with(dodge)
# puts civic.value