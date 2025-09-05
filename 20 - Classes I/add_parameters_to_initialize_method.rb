class Guitar

  attr_reader :type, :wood, :strings
  attr_accessor :price

  def initialize(type, wood, strings, price)
    @type = type
    @wood = wood
    @strings = strings
    @price = price
  end
  
  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end

end

my_guitar = Guitar.new("Electric", "Mahogany", 6, 3600)
thunderstorm = Guitar.new("Acoustic", "Alder", 7, 2400)

p my_guitar.type
p my_guitar.wood
p my_guitar.strings
p my_guitar.price
puts
p thunderstorm.type
p thunderstorm.wood
p thunderstorm.strings
p thunderstorm.price