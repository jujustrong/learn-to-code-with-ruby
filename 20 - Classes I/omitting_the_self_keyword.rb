class Guitar

  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings."
  end

  def details
    # If you omit the self keyword, the code still runs because it finds it in the class itself.
    self.nil_details
    class_details
  end

  def nil_details
    puts "Is it nil? #{self.nil?}"
  end

  def class_details
    puts "It is made from the #{self.class} class."
  end

end

guitar1 = Guitar.new
guitar1.details