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
    @tasks = []
  end

  def add_task(description)
    @tasks << Task.new(description)

  end  

  def mark_task_completed(index)
    task = @tasks[index]
    task.mark_completed if task
  end

  def view_tasks
    puts "To-Do Tasks:"
    @tasks.each_with_index do |task, i|
      puts "#{i}: #{task}"
    end
  end

  def view_completed_tasks
    puts "Complete Tasks:"
    @tasks.each_with_index do |task, i|
      puts "#{i}: #{task}" if task.completed
    end
  end

end


def run
  list = TodoList.new

  puts "-"*40
  loop do
    puts "What would you like to do?"
    choice = ask(
      "1: Add new task\n
      2: Mark Task Completed\n
      3: View Tasks\n
      4: View Completed Tasks\n
      5: Exit\nEnter Number (1-5): "
      ).to_i
    system('clear')

    case choice

    when 1
      list.add_task(ask("What task would you like to add? "))

    when 2
      list.view_tasks
      list.mark_task_completed(ask("Enter task number to mark completed: "))

    when 3
      if list.nil?
        puts "No tasks pending!"
      else
        list.view_tasks
      end

    when 4
      list.view_completed_tasks

    when 5
      puts "Exiting To-Do List. Goodbye!"
      break

    else
      puts "Invalid option. Please enter a number between 1 and 5."
    end

  end

end

run