class Duel
  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

  def start
    puts "A duel begins between #{@player.name} and #{@opponent.name}!"

    while @player.alive? && @opponent.alive?
      choice = ask("Choose a spell: ").to_i - 1
      @player.spells.each_with_index { |spell, i| puts "#{i+1}. #{spell.name}" }
      spell = @player.spells[choice]

      if rand(100) < spell.accuracy
        puts "#{@player.name} casts #{spell.name}!"
        @opponent.take_damage(spell.power)
      else
        puts "#{@player.name} misses!"
      end

      break unless @opponent.alive?

      opp_spell = @opponent.spells.sample
      if rand(100) < opp_spell.accuracy
        puts "#{@opponent.name} casts #{opp_spell.name}!"
        @player.take_damage(opp_spell.power)
      else
        puts "#{@opponent.name} misses!"
      end
    end

    if @player.alive?
      puts "#{@player.name} wins the duel!"
    else
      puts "#{@opponent.name} wins the duel..."
    end

  end


end