puts "Method 1"
puts "hello world".length #displays the number of characters in the string
puts
puts "Method 2"
puts "hello world".upcase #displays the string in uppercase
puts
puts "Method 3"
puts "hello world".downcase #displays the string in lowercase
puts
puts "Method 4"
puts "hello world".reverse #displays the string in reverse
puts
puts "Method 5"
puts "hello world".include?("hello") #displays true if the string includes the word hello
puts
puts "Method 6"
puts "hello world".start_with?("hello") #displays true if the string starts with the word hello
puts
puts "Method 7"
puts "hello world".end_with?("world") #displays true if the string ends with the word world
puts
puts "Method 8"
puts "hello world".index("o") #displays the index of the first occurrence of the letter o
puts
puts "Method 9"
puts "hello world".count("o") #displays the number of occurrences of the letter o
puts
puts "Method 10"
puts "hello world".gsub("o", "a") #displays the string with all occurrences of o replaced by a
puts
puts "Method 11"
puts "hello world".split(" ") #displays an array of words in the string
puts
puts "Method 12"
puts "hello world".strip #displays the string with leading and trailing whitespace removed
puts
puts "Method 13"
puts "hello world".chomp #displays the string with the newline character removed
puts
puts "Method 14"
puts "hello world".capitalize #displays the string with the first letter capitalized
puts
puts "Method 15"
puts "hello world".swapcase #displays the string with uppercase letters converted to lowercase and vice versa
puts
puts "Method 16"
# puts "hello world".titleize #displays the string with each word capitalized
# puts "hello world".truncate(5) #displays the string truncated to 5 characters
puts "hello world".ljust(20) #displays the string left-justified in a field of 20 characters
puts
puts "Method 17"
puts "hello world".rjust(20) #displays the string right-justified in a field of 20 characters
puts
puts "Method 18"
puts "hello world".center(20) #displays the string centered in a field of 20 characters
puts
puts "Method 19"
puts "hello world".lstrip #displays the string with leading whitespace removed
puts
puts "Method 20"
puts "hello world".rstrip #displays the string with trailing whitespace removed
puts
puts "Method 21"
puts "hello world".squeeze #displays the string with consecutive duplicate characters removed
puts
puts "Method 22"
puts "hello world".each_char { |c| puts c } #displays each character in the string on a new line
puts
puts "Method 23"
puts "hello world".each_line { |line| puts line } #displays each line in the string on a new line
puts
puts "Method 24"
puts "hello world".each_byte { |b| puts b } #displays each byte in the string on a new line
puts
puts "Method 25"
puts "hello world".each_codepoint { |cp| puts cp } #displays each codepoint in the string on a new line
puts
puts "Method 26"
puts "hello world".each_char.with_index { |c, i| puts "#{i}: #{c}" } #displays each character in the string with its index
puts
puts "Method 27"
puts "hello world".each_line.with_index { |line, i| puts "#{i}: #{line}" } #displays each line in the string with its index
puts
puts "Method 28"
puts "hello world".each_byte.with_index { |b, i| puts "#{i}: #{b}" } #displays each byte in the string with its index
puts
puts "Method 29"
puts "hello world".each_codepoint.with_index { |cp, i| puts "#{i}: #{cp}" } #displays each codepoint in the string with its index
