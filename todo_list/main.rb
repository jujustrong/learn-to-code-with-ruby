def ask(prompt)
  print("#{prompt}")
  gets.chomp
end

class Task

  attr_accessor :description, :completed

  def initialize(description)
    @description = description.capitalize
    @completed = false
  end

  def mark_completed
    @completed = true
  end

  def to_s
    status = completed ? "[X]" : "[]"
    "#{status} #{description}"
  end

end

class TodoList
  
  def initialize
  end

  def add_task
  end  

  def mark_completed
  end

  def view_tasks
  end

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
      task_num = ask("Enter task number: ").to_i
      if task_num.between?(1, tasks_to_complete.size)
        completed_tasks << tasks_to_complete.delete_at(task_num - 1)
        puts "Task completed!"
      else
        puts "Invalid selection."
      end

    when 3
      puts "Tasks To Complete:"
      if tasks_to_complete.empty?
        puts "No tasks pending!"
      else
        tasks_to_complete.each_with_index { |task, index| puts "#{index + 1}: #{task}" }
      end

    when 4
      puts "Completed Tasks:"
      if completed_tasks.empty?
        puts "No completed tasks yet!"
      else
        completed_tasks.each_with_index { |task, index| puts "#{index + 1}: #{task}" }
      end

    when 5
      puts "Exiting To-Do List. Goodbye!"
      break

    else
      puts "Invalid option. Please enter a number between 1 and 5."
    end

  end

end

todo