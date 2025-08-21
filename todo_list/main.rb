def ask(prompt)
  print("#{prompt}")
  gets.chomp
end


def todo
  tasks_to_complete = []
  completed_tasks = []
  counter = 0

  puts "-"*40
  loop do
    puts "What would you like to do?"
    choice = ask("1: Add new task\n2: Mark Task Completed\n3: View Tasks\n4: View Completed Tasks\n5: Exit\nEnter Number (1-5): ")
    if choice == 1
      new_task = ask("What task would you like to add? ")
      tasks_to_complete << new_task.capitalize
      puts "Task Added!"
    elsif choice == 2
      completed_tasks.map { |task| puts "#{counter}: #{task}, "  }

    end
end

todo