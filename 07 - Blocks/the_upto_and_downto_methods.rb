# 5.upto(10) { |current| puts "The loop is now on #{current}" }

# 6.downto(1) { |current| puts "Countdown: #{current}" }
# puts

99.downto(1) do |x|
  puts "#{x} bottles of beer on the wall, #{x} bottles of beer!"
  puts "Take one down, pass it around"
  puts "#{x -= 1} bottles of beer on the wall!"
  puts
end
