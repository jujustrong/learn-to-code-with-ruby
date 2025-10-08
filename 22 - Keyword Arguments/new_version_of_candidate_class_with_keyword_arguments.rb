class Candidate
  attr_reader :name, :age, :occupation, :hobby, :birthplace

  def initialize(
    name:,            # Indicates that name: and age: are required. They do not have a fallback value and will bring up an error if nothing is entered for them.
    age:, 
    occupation: "Candidate", 
    hobby: "Running for office", 
    birthplace: "USA"
  )
    @name = name
    @age = age
    @occupation = occupation
    @hobby = hobby
    @birthplace = birthplace
  end

end

senator = Candidate.new(
    name: "Mr. Smith", 
    age: 53,  
    hobby: "Fishing", 
    birthplace: "Kentucky"
)

p senator.name
p senator.age
p senator.occupation
p senator.hobby
p senator.birthplace


# Using keyword arguments removes the chance of typos, nil values, wrong arguments.
