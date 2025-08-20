def ask(prompt)
  print("#{prompt}")
  gets.chomp
end


def todo
  tasks_to_complete = []
  completed_tasks = []
  puts "-"*40
  puts "What would you like to do?"
  choice = ask("1: Add new task\n2: Mark Task Completed\n3: View Tasks\n4: View Completed Tasks\n5: Exit\nEnter number (1-5): ")

  
end

todo