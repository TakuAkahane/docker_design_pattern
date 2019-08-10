while task
  puts("task: #{task}")
  task = task.parent
end

###############################################################################

# wrong
class CompositeTask < Task
  def total_number_basic_tasks
    @sub_tasks.length
  end
end

###############################################################################

class Task
  def total_number_basic_tasks
    1
  end
end

class CompositeTask < Task
  def total_number_basic_tasks
    total = 0
    @sub_tasks.each {|task| total += task.total_number_basic_tasks}
    total
  end
end
