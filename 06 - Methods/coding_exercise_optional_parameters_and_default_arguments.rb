def title_assigner(name, suffiix = "The Wise")
  "#{name} #{suffiix}"
end

puts title_assigner("Gandalf") # => "Gandalf The Wise"
puts title_assigner("Gandalf", "The Grey") # => "Gandalf The Grey"

# The method `title_assigner` takes a name and an optional suffix. If the suffix is not provided, it defaults to "The Wise".