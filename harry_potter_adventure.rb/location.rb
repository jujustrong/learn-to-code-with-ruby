class Location 
  attr_reader :name, :description, :options

  def initialize(name, description, options = {})
    @name = name
    @description = description
    @options = options # could be "look around", "talk", "pick up item"
  end

  
  def display_location
    puts "📍 #{@name}"
    puts "-"*40
    puts @description
    puts 
    puts "What would you like to do? #{options.keys.join(", ")}"
  end


end