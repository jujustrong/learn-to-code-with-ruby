# setter method - method that writes/sets/updates the value of an instance variable

class Guitar

  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
    @price = 1500
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end

  def type
    @type
  end

  def wood
    @wood
  end

  def strings
    @strings
  end

  def price
    @price
  end

  def price=(new_price) #this is rubys naming convention when creating a setter method
    @price = new_price
  end

end

guitar1 = Guitar.new
p guitar1.price
guitar1.price=(5000)
p guitar1.price

guitar2 = Guitar.new
p guitar2.price 

guitar1.price = 10000 # this is the same as what we did in line 40. It is a shortcut. But you need the setter method to do this.
# guitar1.wood = "Mahogany" # THIS WILL NOT WORK SINCE THERE IS NO SETTER METHOD




