def get_name()
  puts "What is your name?"
  name = gets.chomp
  puts "Your name is #{name}. Does this look correct? (y/n)"
  answer = gets.chomp.downcase
  if answer == "y"
    puts "Great! Your name is #{name}."
  elsif answer == "n"
    puts "Okay, let's try again."
    get_name()
  else
    puts "Invalid input. Please enter 'y' or 'n'."
    get_name()
  end
  return name
end

get_name()
# This method prompts the user for their name, confirms it, and returns the name.
# It uses recursion to handle incorrect inputs and ensures the user provides a valid response.
# The method is called at the end to initiate the process.
# The method is defined with no parameters, but it uses local variables to store user input.
# The method is called at the end to initiate the process.