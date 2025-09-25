class Player
  attr_accessor :name, :house, :health, :magic, :level, :spells, :inventory

  def initialize(name, house)
    @name = name
    @house = house
    @health = 100
    @magic = 50
    @level = 1
    @spells = []
    @inventory = []
  end

  def learn_spell(spell)
    @spells << spell
    puts "You learned #{spell}!"
  end

  def take_damage(amount)
    @health -= amount
    puts "You took #{amount}!"
    @health = 0 if @health < 0
    puts "Current Health: #{@health}"
  end

  def alive?
    @health > 0
  end

end