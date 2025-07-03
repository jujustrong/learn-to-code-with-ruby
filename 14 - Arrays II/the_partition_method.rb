# partition - split an array into two arrays based on matching/not matching a condition

foods = ["Steak", "Vegetables", "Steak Burger", "Kale", "Tofu", "Tuna Steaks"]

good_foods, bad_foods = foods.partition { |food| food.include?("Steak") }
p good_foods
p bad_foods
