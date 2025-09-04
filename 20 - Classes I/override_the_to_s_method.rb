class Guitar

  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end

  # def to_s
  #   #whenever we put the guitar in a context where it needs to be a string, it will just say this line
  #   #
  #   "Whatever"
  # end

end

guitar = Guitar.new
puts guitar.class
# puts guitar.to_s #ruby will give you a default response. It is just the location of the guitar object in memory
puts guitar