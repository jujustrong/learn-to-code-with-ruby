def clear_screen
  system("clear") || system("cls")
end

def pause_and_clear(seconds = 1)
  sleep(seconds)
  puts "\n(Press Enter to continue...)"
  $stdin.gets  # waits for the user to hit Enter
  clear_screen
end

def ask(prompt)
  print("#{prompt}")
  gets.chomp
end

def play_again?
  loop do
    choice = ask("Play again? (yes/no): ")
    return true  if choice.downcase == "yes"
    return false if choice.downcase == "no"
    puts "Please enter 'yes' or 'no'."
  end
end