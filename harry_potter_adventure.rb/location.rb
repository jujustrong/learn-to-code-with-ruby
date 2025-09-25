class Location 
  attr_reader :name, :description, :events

  def initialize(name, description)
    @name = name
    @description = description
    @events = []
  end

  



end