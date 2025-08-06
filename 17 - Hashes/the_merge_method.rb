# merge method - comines two hashes together into a new hash
# The merge method does not mutate the original hash. You have to use the BANG! method to do that

market = {
  garlic: "3 cloves", 
  milk: "10 gallons"
}
kitchen = {
  bread: "2 slices", 
  milk: "100 gallons"
}

p market.merge(kitchen) # the kitchen hash is being merge into the market hash, so it will win out for duplicate keys
p kitchen.merge(market)

market.merge!(kitchen)
p market