 # object references vs object copies
 
 a = [1,2,3]
 b = a 
# Is b a copy of the array or is it the actual array?
# We are giving a new name to the exact same array

p a
p b
p a.object_id
p b.object_id
p [1,2,3].object_id    # This is a seperate array from the one in line 1
p [1,2,3].object_id 
p [1,2,3].object_id 
p [1,2,3].object_id

puts 

a.push(4)
p a
p b

puts

b<<5
p b
p a

# B and A are NOT clones, they are names pointing to the same array