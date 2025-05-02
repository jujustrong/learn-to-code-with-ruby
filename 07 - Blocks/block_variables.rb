3.times { |count| puts count } #count represents the current iteration

3.times do |running_count|
  puts "#{running_count}: Hello #{running_count + 1}"
end