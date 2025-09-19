require_relative 'player'
require_relative 'combat'
require_relative 'utility'
require_relative 'story'
require_relative 'items'

class Game
  def initialize
    clear_screen
    puts "🌲 Welcome to INTO THE WOODS 🌲"
    name = ask("Enter your name adventurer: ")
    @player = Player.new(name)
    start
  end

  def start
    pause_and_clear
    puts "Hello #{@player.name}."
    first_choice
  end

  def first_choice
    choice = ask("Do you go left or right? ")
    case choice.downcase
    when "left"
      combat(@player, "Goblin", 40)
    when "right"
      @player.add_item("Magic Stone")
    end
  end
  
end

Game.new
