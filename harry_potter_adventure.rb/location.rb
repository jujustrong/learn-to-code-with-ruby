class Location 
  attr_reader :name, :description, :options

  def initialize(name, description, options = [])
    @name = name
    @description = description
    @options = options # could be "look around", "talk", "pick up item"
  end

  
  def display_location
    puts "You are in the #{@name}."
    puts @description
  end


end