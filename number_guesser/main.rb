# This is a number guessing program
# The user will guess an iteger from 1-100 and the program will tell the user
# whether they are too high or too low.
# The user will have 10 guesses

def ask(prompt)
  print "#{prompt}"
  gets.chomp
end

def intro
  
end

def number_guesser
  guesses = 0

  loop do
    puts "Welcome to the Number Guesser!"
    sleep(0.5)
    puts "You have 10 chances to guess the chosen number!"
    sleep(0.5)
    system('clear')
    puts "Generating random number..."
    sleep(1)
    print "..."
    sleep(0.5)
    print "..."
    sleep(0.5)
    print "..."
    sleep(0.5)
    random_num = rand(1..100)
    puts "The number has been decided!"
    system('clear')
    guess = ask("Guess a number between 1 and 100: ").to_i

    while guesses <= 10
      if guess == random_num
      puts "YOU GOT IT! #{guess} is correct!"
      sleep(1)
      puts "Congrats! You got it in #{guesses} guesses!"
      break
      elsif guess < random_num
        puts "Too LOW..."
        guesses += 1
        puts "#{guesses} left!"
      elsif guess > random_num
        puts "Too HIGH..."
        guesses += 1
        puts "#{guesses} left!"
      else
        puts "Please enter a number between 1 and 100..."
        system('clear')
      end
    end

    play_again = ask("Would you like to play again? (Y/N)").downcase
    break if play_again != y


  end


end