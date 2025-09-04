# Getter method - method that reads/gets/retrieves the value of an instance variable

class Guitar

  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
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

end

guitar1 = Guitar.new
p guitar1.type
p guitar1.wood
p guitar1.strings