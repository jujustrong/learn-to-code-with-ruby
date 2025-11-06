# You run these files in the terminal.
# example: jarmstrong@Julians-Macbook 24 - Input and Output % ruby command_line_arguments.rb 83 42 100

# The default type for command args is a String

# ARGV.each { |argument| puts argument.class }

ARGV.each do |argument|
  square = argument.to_i ** 2
  puts "The square of #{argument} is #{square}"
end
