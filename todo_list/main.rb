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
    puts "Task Completed!"
    @completed = true
  end

  def to_s
    status = completed ? "[X]" : "[]"
    "#{status} #{description}"
  end

end

class TodoList
  
  def initialize
    @tasks = []
  end

  def add_task(description)
    @tasks << Task.new(description)
    puts "Task Added!"
    sleep(2)
    system('clear')
  end  

  def mark_task_completed(index)
    task = @tasks[index]
    if task
      task.mark_completed
      system('clear')
    else
      puts "Task not in ToDo List!"
      system('clear')
    end
  end

  def view_tasks
    puts "To-Do Tasks:"
    @tasks.each_with_index do |task, i|
      puts "#{i}: #{task}"
    end
    puts
  end

  def view_completed_tasks
    puts "Completed Tasks:"
    @tasks.each_with_index do |task, i|
      puts "#{i}: #{task}" if task.completed
    end
    puts
  end

end


def run
  list = TodoList.new

  puts "-"*40
  loop do
    puts "What would you like to do?"
    choice = ask("1: Add new task\n2: Mark Task Completed\n3: View Tasks\n4: View Completed Tasks\n5: Exit\nEnter Number (1-5): ").to_i
    system('clear')

    case choice

    when 1
      list.add_task(ask("Enter New Task: "))
    when 2
      list.view_tasks
      list.mark_task_completed(ask("Enter task number to mark completed: ").to_i)

    when 3
      if list.nil?
        puts "No tasks pending!"
      else
        list.view_tasks
      end

    when 4
      list.view_completed_tasks

    when 5
      print "Goodbye!"
      sleep(2.5)
      system('clear')
      break

    else
      puts "Invalid option. Please enter a number between 1 and 5."
    end

  end

end

run