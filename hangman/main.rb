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
  


end

hangman