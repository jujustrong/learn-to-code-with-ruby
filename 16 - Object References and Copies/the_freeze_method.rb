# freeze - make the object immutable

name = "Boris".freeze
hobbies = ["Coding", "Sushi"].freeze

# name << " the Genius"
# hobbies << "Winning"
# name.upcase!

# If dupe is called on a frozen object, the copy will NOT be frozen
# If clone is called on a frozen object, the copy is ALSO frozen

name_dup = name.dup
name_dup << " the Genius"
p name_dup

hobbies_dup = hobbies.dup
hobbies_dup << "Winning"
p hobbies_dup

puts 

name_clone = name.clone
# name_clone << " the Genius"

hobbies_clone = hobbies.clone
# hobbies_clone << "Winning"
p hobbies_clone