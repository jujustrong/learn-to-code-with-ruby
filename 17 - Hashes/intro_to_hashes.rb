# Intro to Hashes
# 
# A has is a data structure consisting of key-value pairs.
# A key is an identifier for a value.
# A hash solves the problem of association (connecting two values together).
# 
# Example: Restaurant menu connects a food item to a price
# Example: A dictionary connect a word to a definition
# 
# Rules of a Hash
# Hash keys must be unique.
# Hash values can contain duplicates.
# Has values are extracted by key, not by order.

empty_hash = {}
puts empty_hash
puts empty_hash.class

empty_arr = []
p empty_arr
puts empty_arr.class

puts empty_hash.length
puts empty_hash.empty?