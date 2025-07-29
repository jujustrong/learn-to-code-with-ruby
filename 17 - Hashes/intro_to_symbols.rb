# Symbol - a lightweight, immutable Ruby object that is used as an identifier
# Symbols are good to use a hash value since it is something that should NOT change
# Symbols help reduce memory

puts :hello
puts "hello"

p "hello".methods.length
p :hello.methods.length

puts

a = "hello"
b = "hello"
c = :hello
d = :hello
e = :goodbye

puts a.object_id
puts b.object_id
puts c.object_id
puts d.object_id
puts e.object_id