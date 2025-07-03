# the * before the parameter allows us to have as many parameters as we want.
# It will create an array for the method to use

def adder(*numbers)    # using the asterisk before the parameter name is sometimes called "sponge" or "splatter"
  p numbers

  sum = 0
  numbers.each { |num| sum += num }
  "The sum is #{sum}"
end

p adder(1)
p adder(1, 2)
p adder(1, 2, 3)
p adder(1, 2, 4, 5)
p adder()

puts 

# the first 2 params will be assigned as "a" and "b" and then anything else will be "numbers"
# a and b are REQUIRED arguments or else the method will not run

def adder2(a, b, *numbers)
  sum = 0
  numbers.each { |num| sum += num }
  "The sum is #{sum}"
end

p adder2(1, 2)    #numbers doesn't exist and so it returns 0
p adder2(1, 2, 3)
p adder2(1, 2, 4, 5)