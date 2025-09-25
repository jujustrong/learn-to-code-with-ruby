require_relative "player"
require_relative "npc"
require_relative "spell"
require_relative "duel"
require_relative "location"
require_relative "event"
require_relative "item"
require_relative "inventory"
require_relative "utility"

class Game
  
  def initialize
    @player = nil
    @running = true
  end

  def start
    clear_screen
    puts "⚡️ Welcome to Hogwarts RPG ⚡️"
    puts 
    create_player
    main_menu
  end

  def create_player
    name = ask("What is your name? ")
    puts "Hello #{name} nice to meet you!"
    sleep(3)
    choose_house
    @player = Player.new(name, house)
  end

  def choose_house
    houses = ["gryffindor", "slytherin", "ravenclaw", "hufflepuff"]
    loop do
      house = ask("Choose your house (Gryffindor 🦁, Slytherin 🐍, Ravenclaw 🦉, Hufflepuff 🦡): ").downcase.strip
      if houses.include?(house)
        house.capitalize
      else
        puts "That's not a valid house. Maybe check your spelling!"
      end

    end

  end

  def main_menu
    while @running
      puts "---- Main Menu ----"
      puts "1. Explore 🏰"
      puts "2. Inventory 🧳"
      puts "3. Quit 👋"
      choice = ask("Enter 1, 2, or 3: ")

      case choice
      when "1" then explore
      when "2" then @player.show_inventory
      when "3" then quit
      else
        puts "Invalid choice."
      end

    end

  end

  def explore
    # Placeholder until i put in explore functionality
    puts "You wander through the castle halls..."
  end

  def quit
    puts "Goodbye Wizard! 🪄"
    @running = false
  end




end

Game.new.start