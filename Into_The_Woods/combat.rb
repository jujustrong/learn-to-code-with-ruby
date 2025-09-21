def combat(player, enemy)
  puts "You have encountered a #{enemy.name}!"
  
  while player.alive? && enemy.alive?
    choice = ask("Attack or run? ")

    if choice.downcase == "attack"
      damage = rand(10..20)
      enemy.take_damage(damage)
      enemy.attack(player) if enemy.alive?
    elsif choice.downcase == "run"
      puts "You escaped!"
      return
    else
      puts "Invalid choice!"
    end

  end

  if player.alive?
    puts "You defeated the #{enemy.name}!"
  else
    puts "You were defeated by the #{enemy.name}"
  end

end