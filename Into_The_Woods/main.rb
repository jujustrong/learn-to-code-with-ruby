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
    @story = Story.new(@player)
    start
  end

  def start
    pause_and_clear
    puts "Hello #{@player.name}."
    loop do
      @story.first_choice
      break unless @player.alive?

      replay = ask("Do you want to continue your journey? (yes/no) ")
      break if replay.downcase == "no"
    end

    puts "Game over! Thanks for playing."

  end

end

Game.new
