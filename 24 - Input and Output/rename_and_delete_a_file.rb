# File.rename("my_first_file.txt", "something_better.txt")

if File.exist?("something_better.txt")
  # this will stop the program from having an error in case the file does NOT exist
  File.delete("something_better.txt")
end

# File.open("something_better.txt", "w") do |file|
#   file.puts "I'm creating this file within Ruby"
#   file.puts "Pretty cool!"
# end