# &&
# AND

puts "Please enter username"
username = gets.chomp
puts "Please enter password"
password = gets.chomp

if username == "rubydev1" && password == "topsecret"
  puts "congrats, you have logged in!"
else
  puts "Incorrect, no access for you!"
end
