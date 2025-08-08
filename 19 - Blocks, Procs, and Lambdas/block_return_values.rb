# Block implicitly return their last evaluation back to the method

def who_am_i
  puts "Hello there, let me tell you about myself"
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i { "handsome" }
who_am_i {"talented"}

puts 

who_am_i do
  "wonderful"
end

puts 

who_am_i { return "charming" }
