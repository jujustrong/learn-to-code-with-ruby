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

  def narration
    puts "You can't go back now...it's too late."
    sleep(4)
    puts "Behind you, the world erupts into chaos - flames lick the horizon,\nsmoke twisting into the sky as the dragons screech echoes in the distance.\nThe ground trembles, carrying with it the sound of something massive breaking apart."
    puts
    puts "Your vision blurs slightly as you regain your balance on fatigued legs."
    pause_and_clear
    puts "The only path left — the only chance to survive — is forward. Into the dark,\ntangled silence of the woods. The trees loom ahead like watchful giants, their branches\nclawing at the last light of day. A chill seeps into your chest despite the heat of the flames\nin the distance behind. There's no telling what waits inside."
    puts
    puts "But you have no choice, step by step, your journey begins..."
    pause_and_clear
  end

  def story_start
    narration
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