# OR
# ||

entree = "Steak"
price = 45.00

food_is_delicious = entree == "Steak"
meal_is_affordable = price < 29.99

if food_is_delicious || meal_is_affordable
  puts "At least one of the conditions is true, purchasing meal"
end