class Enemy
  attr_accessor :name, :health, :attacks

  def initialize(name, health, attacks)
    @name = name
    @health = health
    @attacks = attacks
  end

  def alive?
    @health > 0
  end

  def take_damage(amount)
    @health -= amount
    @health = 0 if @health < 0
    puts "#{@name} took #{amount} damage! (Health: #{@health})"
  end

  def attack(player)
    attack_name, damage_range = @attacks.to_a.sample
    damage = rand(damage_range)
    puts "#{@name} uses #{attack_name}! It dealt #{damage} damage!"
    player.take_damage(damage)
  end

end