# This is a number guessing program
# The user will guess an iteger from 1-100 and the program will tell the user
# whether they are too high or too low.
# The user will have 10 guesses

def ask(prompt)
  print "#{prompt}"
  gets.chomp
end

def number_guesser

  loop do
    guesses = 1
    puts "Welcome to the Number Guesser!"
    sleep(2)
    puts "You have 10 chances to guess the chosen number!"
    sleep(2)
    puts "Generating random number..."
    sleep(2)

    3.times do
      print "..."
      sleep(0.5)
    end
    puts
    
    random_num = rand(1..100)
    puts "The number has been decided!"
    sleep(2)
    system('clear')

    while guesses <= 10
      guess = ask("Guess a number between 1 and 100: ").to_i

      # Invalid input check
      if guess < 1 || guess > 100
        puts "Please enter a valid number 1 and 100"
        next
      end

      if guess == random_num
      puts "YOU GOT IT! #{guess} is correct!"
      sleep(1)
      puts "Congrats! You got it in #{guesses} guesses!"
      puts
      guesses = 1
      break
      elsif guess < random_num
        sleep(1)
        puts "Too LOW..."
        puts "#{10 - guesses} guesses left!"
        puts
        guesses += 1
      elsif guess > random_num
        sleep(1)
        puts "Too HIGH..."
        puts "#{10 - guesses} guesses left!"
        puts
        guesses += 1
      else
        puts "Please enter a number between 1 and 100..."
        system('clear')
      end

    end

    puts "Out of guesses! The correct number was #{random_num}" if guesses > 10

    play_again = ask("Would you like to play again? (Y/N) ").downcase

    if play_again == "y" 
      guesses = 1
    else
      break
    end
  
  end

end


number_guesser