File.open("my_first_file.txt", "a") do |file|
  # This is actually writing a line to the text file, not the top level puts method that prints it to the terminal/coderunner
  # 
  # file.puts "I'm creating this text file using Ruby"
  file.puts "What's up? How you doing?"
  file.write "No line break here"
  file.puts "Pretty cool!"
end

# With the normal "w" permission, ruby will replace the text in the file with whatever changes you make and you will lose all other input you had originally.
# With the "a" permission version, it will add/append the added content without replacing anything