# block_given? method determines whether a block was
# provided to method invocation

def pass_control_on_condition
  puts "Inside the method"
  yield if block_given?
  puts "Back inside the method"
end

pass_control_on_condition { puts "Inside the block" }
pass_control_on_condition