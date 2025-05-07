# | Time of Week | Time of Day | Meal            |
# |--------------|-------------|-----------------|
# | weekday      | morning     | Cereal          |
# | weekday      | night       | Chicken Nuggets |
# | weekend      | morning     | French Toast    |
# | weekend      | night       | Steak           |

def meal_plan(time_of_week, time_of_day)
  if time_of_week == "weekday"
    if time_of_day == "morning"
      "Cereal"
    elsif time_of_day == "night"
      "Chicken Nuggets"
    end
  elsif time_of_week == "weekend"
    if time_of_day == "morning"
      "French Toast"
    elsif time_of_day == "night"
      "Steak"
    end
  end
end

puts meal_plan("weekday", "morning")
puts meal_plan("weekday", "night")
puts meal_plan("weekend", "night")
