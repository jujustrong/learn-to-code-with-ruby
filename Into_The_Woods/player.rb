class Player
  attr_accessor :name, :health, :inventory

  def initialize(name)
    @name = name
    @health = 100
    @inventory = [ "Torch", "Map" ]
  end

  def add_item(item)
    puts "You see something further down the path..."
    sleep(2)
    puts "It looks like a #{item}!"
    add = ask("Would you like to add #{item} to your inventory? (yes/no) ")
    if add.downcase == "yes" && @inventory.length <= 10
      @inventory << item
      puts "#{item} has been added to your inventory"
    elsif @inventory.length > 10
      puts "You already have 10 items!"
      sleep(2)

      remove = ask("Remove an item and replace it with the #{item}? (yes/no) ")
        if remove.downcase == "yes"
          show_inventory
          choice = ask("Which item would you like to remove? ")
          remove_item(choice)
          @inventory << item
          puts "#{item} has been added to your inventory"
        else
          puts "You leave the #{item} and continue down the path..."
        end

    else
      puts "You leave the #{item} and continue down the path..."
    end

  end

  def remove_item(item)
    if @inventory.include?(item)
      @inventory.delete(item)
      puts "#{item} removed from your inventory."
    else
      puts "You don't have #{item} in your inventory."
    end
  end

  def show_inventory
    puts "Inventory: #{@inventory.join(", ")}"
  end

  def take_damage(amount)
    @health -= amount
    puts "You have taken #{amount} damage! Your health is now #{@health}."
  end








end