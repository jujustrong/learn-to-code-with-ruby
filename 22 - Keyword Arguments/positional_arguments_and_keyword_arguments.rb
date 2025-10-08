def sum(a, b: 1) # When invoking this method, we have to provide an argument "a" FIRST since it is not a keyword and it is based on sequence, then we have to provide a named keyword argument "b:"
  a + b 
end

p sum(3, b: 5)
p sum(4) # This works because a is = 4, and b is = 1 as a default value
# p sum(4, 9) # This will NOT work because we didn't give "b: " a value. The order doesn't matter, b needs its own named argument
# p sum(b: 5, 3) # This is also wrong because b: is in the spot that a HAS to be in


# Which way you choose to do it, whether it be keyword arguments or sequential ones does not matter.
# You just have to be consistent and not mix them so that other devs aren't confused and your code isn't sloppy.