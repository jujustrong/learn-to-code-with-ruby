# 90 to 100 is an A
# 80 to 89 is a B
# 70 to 79 is a C
# 60 to 69 is a D
# <60 is an F

def calculate_grade()
  grade = rand(1..100)

  case grade
    
  when grade = 90..100
    "You got a #{grade.to_a.sample}. Congrats that's an A!"
  when grade = 80..89
    "You got a #{grade.to_a.sample}. That's a B, good job."
  when grade = 70..79
    "You got a #{grade.to_a.sample}. That's a C, try a little harder next time!"
  when grade = 60..69
    "You got a #{grade.to_a.sample}. You have recieved a D. Please re-submit"
  when grade = 1..60
    "You got a #{grade.to_a.sample}. Not a passing grade, see me after class please."
  else
    "Please schedule your test after class"
  end

end

puts calculate_grade()

# !!! Case shortcut !!!!
# Case
# when (value) then (return value)
# when (value) then (return value)
# when (value) then (return value)
# else (return value)
# end