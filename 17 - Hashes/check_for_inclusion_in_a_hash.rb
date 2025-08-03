# Check for inclusion in a hash
# 
# The include? method checks among the hash's keys
# the key? and has_key? methods check among the hash's keys
# the value? and has_value? methods check among the hash's values

cars = { toyota: "Camry", chevorlet: "Aveo", ford: "F150", kia: "Soul" }
p cars.include?(:toyota)
p cars.include?("toyota")
p cars.include?(:Toyota)
p cars.include?("Camry")

p cars.key?(:ford)
p cars.has_key?(:ford)

puts 

p cars.has_value?("Soul")
p cars.has_value?("F350")
p cars.value?("Mustang")
p cars.value?("Aveo")
p cars.value?(:toyota)