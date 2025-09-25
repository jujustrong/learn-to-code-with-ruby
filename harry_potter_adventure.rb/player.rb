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

  def show_inventory
    if @inventory.empty?
      clear_screen
      puts "Your bag is empty."
      pause_and_clear
    else
      clear_screen
      puts "Inventory: " + @inventory.map(&:name).join(", ")
      pause_and_clear
    end
  end

  def alive?
    @health > 0
  end

end