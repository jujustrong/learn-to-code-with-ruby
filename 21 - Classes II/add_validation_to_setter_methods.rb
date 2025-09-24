class Smartphone
  attr_reader :username, :production_number, :password
  
  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

  # Without this method below, if we just had an attr_writer or attr_accessor at the top, we could have changed
  # the password to anything and everything we wanted to. So we needed a separate setter method in order to 
  # specify what we want the password to have in it.
  def password=(password)           # Make sure to include the '=' after the method name since it is a setter method
    # if password.length >= 6
    #   @password = password
    # end
    # Alt Logic
    # @password = password if password.length >= 6
    @password = password if valid_password?(password)

  end

  private

  def generate_production_number
    random_number = rand(10_000..99_000)
    another_random_number = rand(10_000..99_000)
    "2023-#{random_number}-#{another_random_number}"
  end

  def valid_password?         # This can have as much logic as you want without it going into something that can be accessed
    password.length >= 6
  end

end

smartphone1 = Smartphone.new("jsmartphone", "topsecret")
p smartphone1.password


smartphone1.password = "programming"
p smartphone1.password

smartphone1.password = "ok"
p smartphone1.password