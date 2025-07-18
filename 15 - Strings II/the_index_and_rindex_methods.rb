# index - find index of first occurrence of substring

fact = "I am very handsome"

p fact.index("m")
p fact.index("r")
p fact.index("z")
p fact.index("am")
p fact.index("and")

puts

p fact.index("e", 3)
p fact.index("e", 6)
p fact.index("e", 7) #starts from after the first e and givcs you the index of the other e

puts 
# rindex section
# "right" index
# starts from the end of the string and seaches from the back of the string

p fact.rindex("e")