require_relative 'player'
require_relative 'combat'
require_relative 'utility'

class Game
  def initialize
    clear_screen
    puts "🌲 Welcome to INTO THE WOODS 🌲"
    print "Enter your name adventurer: "
    name = gets.chomp
    @player = Player.new(name)
    start
  end

  def start
    pause_and_clear
    puts "Hello #{@player.name}."
    first_choice
  end

  def first_choice
    puts "Do you go left or right?"
    choice = gets.chomp.downcase
    case choice
    when "left"
      combat(@player, "Goblin", 40)
    when "right"
      @player.add_item("Magic Stone")
    end
  end
end

Game.new
