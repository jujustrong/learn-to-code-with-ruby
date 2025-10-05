class Location 
  attr_reader :name, :description, :options

  def initialize(name, description, options = {})
    @name = name
    @description = description
    @options = options # could be "look around", "talk", "pick up item"
  end

  
  def display_location
    puts "📍 #{name}"
    puts "-"*40
    puts @description
    @options.each_with_index do |(key, _), i|
      puts "#{i + 1}. #{key.capitalize}"
    end
  end


end