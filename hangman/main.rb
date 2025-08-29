# Arrays,  Loops, Conditionals
# Pick a random word, let user guess letters.
# Track guessed letters and wrong guesses.
# End game when word is guessed or max tries reached.

def ask(prompt)
  print("#{prompt}")
  gets.chomp
end

def hangman
  wrong_guesses = []
  lives = 6

  words = [
    "ruby", "hangman", "anime", "tower", "trail", "running", "mountain", 
  "climb", "python", "magic", "harry", "potter", "animals", "adidas", "terrex", "hoka", "salomon", 
  "mellow", "asics", "nike", "hyperlyte", "florence", "kaipo", "kanyon", "fezzick", "peak", "sanitas", "green", 
  "bear", "anemone", "flatirons", "mesa", "boulder", "eldorado", "golden", "wapiti", "boulderthon", 
  "marathon", "ultramarathon", "interval", "tempo", "hill", "longrun"
  ]
  secret_word = words.sample
  hidden = Array.new(secret_word.length, "_")

  puts "Welcome to Hangman!"
  sleep(2)
  puts "Let's generate a word..."
  4.times {
    sleep(1)
    print "..."
  }
  puts "\nWord generated!"
  sleep(2)
  system('clear')

  # Main Game loop
  until lives == 0 || hidden.join == secret_word

    puts "\nWord (#{secret_word}): #{hidden.join(", ")}"
    puts "Wrong guesses: #{wrong_guesses.join(", ")}"
    puts "Lives left: #{lives}"
    guess = ask("Guess a letter: ")

    # Checking if already guessed
    if hidden.include?(guess) || wrong_guesses.include?(guess)
      puts "You already guessed #{guess}!"
      sleep(2)
      system('clear')
      next
    end

    # Checking guess
    if secret_word.include?(guess)
      secret_word.chars.each_with_index do |char, index|
        hidden[index] = char if char == guess
      end
      puts "Good Guess!"
    else
      wrong_guesses << guess
      lives -= 1
      puts "Wrong guess!"
    end
    sleep(2)
    system('clear')
  end

  if hidden.join == secret_word
    puts "\n🎉 You win! The word was '#{secret_word}'"
    puts
    puts
  else
    puts "\n💀 You lose! The word was '#{secret_word}'"
    puts
    puts
  end

end

hangman