class Event 
  attr_reader :title, :description

  def initialize(title, description)
    @title = title
    @description = description
  end

  def trigger(player)
    puts "#{@title}: #{@description}"
  end





end