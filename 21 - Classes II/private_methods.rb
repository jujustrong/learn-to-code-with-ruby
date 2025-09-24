# Instance method that cant be called outside of the object
# Can only be invoked by another instance method inside the object
# Helps to not make the method too complex

class Smartphone
  attr_reader :username, :production_number
  attr_writer :password
  
  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

  private     #ANY method below this keyword is classified as private and will not be able to be called/accessed outside of the class.

  def generate_production_number    # this method is for if we wanted to produce a unique number for each smartphone that is instatiated.
    random_number = rand(10_000..99_000)
    another_random_number = rand(10_000..99_000)
    "2023-#{random_number}-#{another_random_number}"
  end

end

smartphone1 = Smartphone.new("jsmartphone", "topsecret")
p smartphone1.production_number         #this will give us a randomized production number each time.
p smartphone1.generate_production_number    #We should NOT be able to do this because we don't want developers or users to be able to generate a new number randomly.