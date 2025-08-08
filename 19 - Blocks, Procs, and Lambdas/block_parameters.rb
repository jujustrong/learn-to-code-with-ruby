def speak_the_truth(name)
  yield(name)
end

speak_the_truth("Jim") { |name| puts "#{name} is brilliant" }
speak_the_truth("Joe") { |name| puts "#{name} is awesome" }

def number_evaluation(num1, num2, num3)
  yield(num1, num2, num3)
end

p number_evaluation(1, 2, 3) { |a, b, c| a + b + c}
p number_evaluation(3, 4, 5) { |a, b, c| a * b * c}