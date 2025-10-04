# Keyword arguments - a new feature in Ruby 2.0 that is conceptually similar to passing a hash,
# but with better error handling.
# Keyword arguments allow the invocation of a method to specify which parameters the arguments correspond to
# 
# Benefits: Order does not matter just like when using a HASH. If you have a typo, Ruby will catch it and
# give an exception. If it were a HASH, it would just give you a nil value.

def sum(a:, b:)
  a + b 
end

p sum(a: 2, b: 3)
p sum(b: 3, a: 2)
p sum(a: 2)       # Ruby now raises an exception when omitting a keyword. If we were to use a HASH, it would just make the value nil



