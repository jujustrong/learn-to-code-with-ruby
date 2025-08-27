def ask(prompt)
  print("#{prompt}")
  gets.chomp
end


def todo
  tasks_to_complete = []
  completed_tasks = []

  puts "-"*40
  loop do
    puts "What would you like to do?"
    choice = ask("1: Add new task\n2: Mark Task Completed\n3: View Tasks\n4: View Completed Tasks\n5: Exit\nEnter Number (1-5): ").to_i

    case choice
    when 1
      new_task = ask("What task would you like to add? ")
      tasks_to_complete << new_task.capitalize
      puts "Task Added!"
    
    when 2
      puts "No tasks to complete!" if tasks_to_complete.empty?
      
      puts "Which task would you like to mark as completed?"
      tasks_to_complete.each_with_index { |task, index| puts "#{index + 1}: #{task}" }
    when 3
    when 4
    when 5
    else
    end
  end

end

todo