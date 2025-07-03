shirts = ["striped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]

counter = 1
shirts.each do |shirt| #striped
  ties.each do |tie|
    puts "OPTION #{counter}: A #{shirt} shirt and a #{tie} tie."
    puts
    counter += 1
  end
end