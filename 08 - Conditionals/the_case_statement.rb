def rate_my_food(food)
  case food
  when "Steak"
    "Meh"
  when "Tofu"
    "Pretty Good!"
  when "Pasta"
    "My Favorite!"
  when "Ramen", "Cereal", "Burrito"       #We can layer conditions in case statements
    "So Good!"
  else
    "Not one of my favorites but OK!"
  end
end

puts rate_my_food("Steak")
puts rate_my_food("Tofu")
puts rate_my_food("Pasta")
puts rate_my_food("Ramen")
puts rate_my_food("Cereal")
puts rate_my_food("Burrito")
puts rate_my_food("Curry")