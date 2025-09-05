class Guitar

  attr_reader :type, :wood, :strings, :price #does the same thing as making the getter methods we made.
  attr_writer :type, :wood, :strings, :price #does the same thing as the setter methods.

  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
    @price = 1500
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end

end

guitar1 = Guitar.new
p guitar1.type
p guitar1.wood
p guitar1.strings
p guitar1.price
guitar1.price = 10_000
p guitar1.price

guitar1.price = 5_000
p guitar1.price