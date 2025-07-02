soups = ["French Onion", "Creamy Mushroom", "Tomato Bisque"]
p soups
puts
# .push adds another element directly to the end of an array. 
# You can add as many elements as needed as parameters
# .push will also mutate the original array completely
soups.push("Minestrone")
p soups
puts
soups.push("Wonton", "Hot and Sour")
p soups
puts

locations = ["Airport", "Bar", "Saloon"]
locations << "House"
p locations
puts

locations << "Rodeo" << "Theme Park"
p locations