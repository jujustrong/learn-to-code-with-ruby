def combat(player, enemy, enemy_health)
  puts "You have encountered a #{enemy}!"
  
  while player.health > 0 && enemy_health > 0
    print "Attack or run?"
    choice = gets.chomp.downcase

    if choice == "attack"
      damage = rand(10..20)
      enemy_health -= damage
      puts "You hit the #{enemy} for #{damage}!"
      player.take_damage(rand(5..15)) if enemy_health > 0
    else
      puts "You escaped!"
      return 
    end
  end
end