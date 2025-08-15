# If using something once, a block makes more sense because it is used and then it goes away.
# If you need something done repeatedly, a proc is the better option to avoid writing more repeated code.

def talk_about(name, &my_proc)
  puts "Let me tell you about #{name}"
  my_proc.call(name)
end

def talk_about_2(name)
  puts "Let me tell you about #{name}"
  yield(name)
end


good_thing = Proc.new { |name| puts "#{name} is a jolly good fellow" }
bad_thing = Proc.new { |name| puts "#{name} is a dolt!" }

talk_about("Boris", &good_thing) # These procs save us from having to make several methods with repeatable code.
talk_about("Brock", &bad_thing)
puts 

#Even though we didnt give this a proc, it will take a block and convert it to a proc:
talk_about("Johnny") { |name| puts "#{name} is irrelevant" } 
puts 

talk_about_2("Dan") { |name| puts "#{name} is someone special" }
talk_about_2("Bob", &good_thing)