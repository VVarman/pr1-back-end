tasks = []

loop do
  puts "\n1. Add Task"
  puts "2. Show Tasks"
  puts "3. Delete Task"
  puts "4. Exit"
  print "\nChoose an option: "
  choice = gets.chomp

  case choice
  when "1"
    print "Enter new task: "
    task = gets.chomp
    tasks << task
    puts "Task added!"

  when "2"
    if tasks.empty?
      puts "No tasks found."
    else
      puts "\nCurrent Tasks:"
      tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
      end
    end

  when "3"
    if tasks.empty?
      puts "No tasks to delete."
    else
      puts "\nSelect a task number to delete:"
      tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
      end
      print "Enter task number: "
      index = gets.chomp.to_i
      if index.between?(1, tasks.length)
        deleted = tasks.delete_at(index - 1)
        puts "Deleted task: '#{deleted}'"
      else
        puts "Invalid task number."
      end
    end

  when "4"
    puts "Bye!"
    break

  else
    puts "Invalid option. Try again."
  end
end
