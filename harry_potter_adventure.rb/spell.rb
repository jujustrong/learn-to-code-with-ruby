class Spell
  attr_reader :name, :power, :accuracy, :effect

  def initialize(name, power, accuracy, effect = nil)
    @name = name
    @power = power
    @accuracy = accuracy
    @effect = effect
  end



end