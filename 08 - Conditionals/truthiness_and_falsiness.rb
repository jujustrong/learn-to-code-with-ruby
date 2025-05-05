#2 falsy values - false, nil
#Everything else is truthy

if 5
  puts "Will this print"
end

if "Hello"                  #This is not common logic but it will still evaluate this to truthy
  puts "This is truthy"
end

#You typically want your if conditional to have a boolean value