# Shift is basically the inverse of the pop method
# Shift Removes and Returns the first element in an array
# Shift takes in arguments and will remove and return the specified number of elements
# Unshift will add an element or element(s) to the beginning of the array similar to push (push adds to the end)

units = ["meter", "kilogram", "second", "ampere"]
p units

puts

p units.shift
p units

puts 

p units.shift(2)
p units

puts

units.unshift("yard")
p units

puts 

units.unshift("inches", "miles")
p units