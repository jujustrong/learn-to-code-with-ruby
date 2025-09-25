class NPC 
  attr_accessor :name, :role, :health, :spells

  def initialize(name, role = "student")
    @name = name
    @role = role
    @health = 80
    @spells = []
  end

  def take_damage(amount)
    @health -= amount
    puts "#{self.name} took #{amount} damage!"
    @health = 0 if @health < 0
  end

  def alive?
    @health > 0
  end


end