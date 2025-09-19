def clear_screen
  system("clear") || system("cls")
end

def pause_and_clear(seconds = 1)
  sleep(seconds)
  clear_screen
end

def ask(prompt)
  print("#{prompt}")
  gets.chomp
end