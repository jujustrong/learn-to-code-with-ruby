require_relative "combat"
require_relative "enemy"

def random_enemy
  wolf = Enemy.new("Wolf", 30, { "Bite" => 5..10, "Claw" => 3..8 })
  bandit = Enemy.new("Bandit", 40, { "Slash" => 6..12, "Stab" => 8..14 })
  bear = Enemy.new("Bear", 60, { "Maul" => 10..20, "Swipe" => 8..15 })
  goblin = Enemy.new("Goblin", 25, { "Punch" => 4..8, "Dagger Stab" => 6..10 })
  enemies = [wolf, bandit, bear, goblin]
  enemies.sample
end

class Story
  def initialize(player)
    @player = player
  end

  def first_choice
    puts "You arrive at a fork in the woods."
    choice = ask("Go left or right? ")

    if choice.downcase == "left"
      puts "The path is quiet... too quiet..."
      combat(@player, random_enemy)
    elsif choice.downcase == "right"
      puts "You stumble into a camp..."
      combat(@player, random_enemy)
    else
      puts "You wander aimlessly..."
    end
  end
end