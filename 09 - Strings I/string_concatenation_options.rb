first_name = "Harry"
last_name = "Potter"

puts first_name + last_name
puts last_name + first_name

# first_name = first_name + last_name
# first_name += last_name
# puts first_name

# The original string is not changed in these examples. 
# In the next examples, the string itself will be changed.

# puts first_name.concat(last_name)
# puts first_name

# puts first_name.prepend(last_name)
# puts first_name

# Shovel operator '<<' this is similar to using the '+' to concatenate but it changes the actual string.
wrestler = "Stone Cold "
wrestler << "Steve Austin" << "WWF Champion"
puts wrestler