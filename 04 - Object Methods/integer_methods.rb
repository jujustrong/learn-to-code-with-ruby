puts 10.next #displays the next integer
puts 10.pred #displays the previous integer
puts 10.even? #displays true if the integer is even
puts 10.odd? #displays true if the integer is odd
puts 10.times { |i| puts i } #displays the integers from 0 to 9
puts 10.upto(20) { |i| puts i } #displays the integers from 10 to 20
puts 10.downto(0) { |i| puts i } #displays the integers from 10 to 0
puts 10.step(2) { |i| puts i } #displays the integers from 10 to 20 in steps of 2
puts 10.step(2, -2) { |i| puts i } #displays the integers from 10 to 0 in steps of -2
puts 10.times.map { |i| i * 2 } #displays an array of integers from 0 to 18 in steps of 2
puts 10.times.map { |i| i * -1 } #displays an array of integers from -0 to -9
puts 10.times.map { |i| i * 2 + 1 } #displays an array of integers from 1 to 19 in steps of 2
puts 10.times.map { |i| i * -2 - 1 } #displays an array of integers from -1 to -19 in steps of -2
puts 10.times.map { |i| i * 2 + 1 } #displays an array of integers from 1 to 19 in steps of 2
puts 10.times.map { |i| i * -2 - 1 } #displays an array of integers from -1 to -19 in steps of -2
