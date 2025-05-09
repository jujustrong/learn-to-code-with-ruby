puts "hello\n\n\nworld"
puts 'hello\n\n\n'

# C:\Documents\news

puts "C:\Documents\news" # Ruby will not read this line correctly with double quotes becuase it allows special characters. Use single quotes
puts 'C:\Documents\news' # for something like this.ARGF

# String interpolation ONLY works with double quotes
phrase = "Hello World"
puts "My phrase is #{phrase}"

# Single quote strings are also called 'Raw String' in some languages.