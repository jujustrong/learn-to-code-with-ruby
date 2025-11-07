puts "Welcome to the program"

load "another_file.rb"

some_method
table = Table.new
puts table.class

load "./another_file.rb"  #If you load this file again, Ruby will run it again. There is no need to do it, but its possible
                          #using the ./ in front of the file name is also common amongst developers

load "./another_file.rb" if 8 > 5 # This also works becuase load acts as a normal Ruby method.


puts "We've reached the end of our program."