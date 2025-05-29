class Game
  def initialize
    clear_screen
    puts "🌲 Welcome to INTO THE WOODS 🌲"
    print "Enter your name adventurer: "
    name = gets.chomp
    @player = Player.new(name)
  end








end