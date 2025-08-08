# yield - directly inside the method
# If you use the yield keyword, you HAVE to provide a block next to the method call

def pass_control
  puts "I'm at the start of the pass_control method"
  yield
  puts "Now I'm back inside the pass_control method"
  yield
end

pass_control { puts "Now I'm inside the block" }
puts

pass_control { puts "I am very handsome" }
puts

pass_control do
  puts "Hello, line number 1"
  puts "Goodbye, line number 2"
end