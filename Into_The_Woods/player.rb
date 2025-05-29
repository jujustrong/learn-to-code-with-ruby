class Player
  attr_accessor :name, :health, :inventory

  def initialize(name)
    @name = name
    @health = 100
    @inventory = [ "Torch", "Map" ]
  end

  def add_item(item)
    @inventory << item
    puts "#{item} has been added to your inventory"
  end

  def show_inventory
    puts "Inventory: #{@inventory.join(", ")}"
  end

  def take_damage(amount)
    @health -= amount
    puts "You have taken #{amount} damage! Your health is now #{@health}."
  end








end