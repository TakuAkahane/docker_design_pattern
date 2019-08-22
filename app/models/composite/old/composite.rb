class CompositeTask < Task
  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def add_sub_task(task)
    @sub_tasks << task
  end

  def remove_sub_task(task)
    @sub_tasks.delete(task)
  end

  def get_time_required
    time = 0.0
    @sub_tasks.each {|task| time += task.get_time_required}
    time
  end
end

class MakeBatterTask < CompositeTask
  def initialize(name)
    add_sub_task(GetMilkTask.new)
    add_sub_task(MixMilkTask.new)
  end
end

class GetMilkTask < MakeBatterTask
  def initialize
    super('Get milk task')
  end
end

class MixMilkTask < MakeBatterTask
  def initialize
    super('Get milk task')
  end
end
