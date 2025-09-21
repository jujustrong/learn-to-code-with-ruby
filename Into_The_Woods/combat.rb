def combat(player, enemy)
  puts "You have encountered a #{enemy}!"
  
  while player.alive? && enemy.alive?
    choice = ask("Attack or run? ")

    if choice.downcase == "attack"
      damage = rand(10..20)
      enemy.take_damage(damage)
      enemy.attack(player) if enemy.alive?
      enemy_health -= damage
    elsif choice.downcase == "run"
      puts "You escaped!"
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