# This is a number guessing program
# The user will guess an iteger from 1-100 and the program will tell the user
# whether they are too high or too low.
# The user will have 10 guesses

def ask(prompt)
  print "#{prompt}"
  gets.chomp
end

def play

  guesses = 1
  max_guesses = 10
  random_num = rand(1..100)

  puts "Welcome to the Number Guesser!"
  sleep(2)
  puts "You have #{max_guesses} chances to guess the chosen number!"
  sleep(2)
  puts "Generating random number..."
  sleep(2)

  3.times do
    print "..."
    sleep(0.5)
  end
  puts

  puts "The number has been decided!"
  sleep(2)
  system('clear')

  while guesses <= max_guesses
    guess = ask("Guess a number between 1 and 100: ")

    # Invalid input check
    unless (1..100).include?(guess)
      puts "❌ Please enter a valid number 1 and 100"
      sleep(2)
      system('clear')
      next
    end

    guess = guess.to_i

    if guess == random_num
      puts "🎉 YOU GOT IT! #{guess} is correct!"
      sleep(1)
      puts "Congrats! You got it in #{guesses} guesses!"
      puts
      return
    elsif guess < random_num
      sleep(1)
      puts "Too LOW...(#{max_guesses - guesses} guesses left!)"
      puts
    else
      sleep(1)
      puts "Too HIGH...(#{max_guesses - guesses} guesses left!)"
      puts
    end

    guesses += 1

  end

  puts "😢 Out of guesses! The correct number was #{random_num}" if guesses > 10

end

def number_guesser
  loop do
    play
    play_again = ask("Would you like to play again? (Y/N) ").downcase
    system('clear')
    break unless play_again == "y"
  end

end


number_guesser