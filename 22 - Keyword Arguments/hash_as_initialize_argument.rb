# Keyword arguments - allow invocation of a method to specify which parameters the arguments correspond to
# Special Ruby feature seen alot in modern Ruby code

class Candidate
  attr_reader :name, :age, :occupation, :hobby, :birthplace


  # Having this many arguments causes problems due to the fact that
  # it requires alot of data to start it up and it also adds complication because of the sequence.
  # There is alot of room for error.
  # def initialize(name, age, occupation, hobby, birthplace) 
  #   @name = name
  #   @age = age
  #   @occupation = occupation
  #   @hobby = hobby
  #   @birthplace = birthplace
  # end
  

  # When using a HASH (like below) we are accessing the items by their key.
  # Now we dont have to worry about the order when instatiating the arguments.
  # If you forget to include a parameter when instatiating (So if you forget to enter a value for :hobby),
  # Ruby will return nil.
  # We should also watch out for typos when assigning values to keys or else it will return nil for that key.
  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]
  end

end

# If we are providing a HASH as the last argument (or in this case the only argument) to a method, you can
# omit the curly braces when using it. So you can omit the curly braces in the senator instantiation below
# and it will still work.

senator = Candidate.new(
  {
    name: "Mr. Smith", 
    age: 53, 
    occupation: "Banker", 
    hobby: "Fishing", 
    birthplace: "Kentucky"
  }
)

p senator.name
p senator.age
p senator.occupation
p senator.hobby
p senator.birthplace
