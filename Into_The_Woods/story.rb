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

  def dramatic_intro(player)
    chaos_scenarios = [
      "Behind you, flames roar as the horizon collapses into smoke and ash. The air is thick with heat, and the ground trembles under your feet.",
      "Behind you, a wall of water crashes through the land, swallowing roads and homes in its path. The roar of the flood drowns out every thought.",
      "Behind you, shadows surge forward, crawling with twisted shapes. Inhuman shrieks echo as the creatures scatter through the burning ruins.",
      "Behind you, the city crumbles — towers falling like brittle sticks, stone and steel raining down as the streets disappear into chaos."
    ]

    clear_screen
    puts "You can't go back now, #{player.name}. It's too late."
    puts chaos_scenarios.sample
    puts
    puts "You slowly make your way to your feet, your vision blurs slightly as you regain your balance."
    puts "The only path left — the only chance to survive — is forward."
    puts "Into the dark, tangled silence of the woods..."

  end

  def story_start
    dramatic_intro(@player.name)
    loop do
      puts "Which path will you choose..."
      choice = ask("Left or Right? ")

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




end