# Lambdas vs. Procs
# 1) A lambda cares about the number of arguments it receives.
#    A lambda will throw an error if passed the wrong number of arguments.
#    A Proc will ignore extra arguments and assign nil to missing arguments.

# 2) When a lambda returns it passes control back to the calling method.
#    When a Proc returns, it triggers a return from the calling method.
#    (similar behavior to a block)

my_proc = Proc.new { |name, age| puts "Your name is #{name} and your are #{age} years old." }
my_lambda = lambda { |name, age| puts "Your name is #{name} and your are #{age} years old." }

def do_stuff(&code)
  code.call("Boris", 25)
end

def do_more_stuff(&code)
  code.call("Boris")
end

do_stuff(&my_proc)
do_stuff(&my_lambda)
do_more_stuff(&my_proc) #nil shows up as an empty space. No error is thrown when using a proc with missing arguments
# do_more_stuff(&my_lambda)
puts 

my_proc = Proc.new { return "PROC RETURN" }
my_lambda = lambda { return "LAMBDA RETURN" }

def execute(&code)
  puts "Opening file..."
  puts code.call
  puts "Closing file..."
end

execute(&my_lambda)

puts 

execute(&my_proc)