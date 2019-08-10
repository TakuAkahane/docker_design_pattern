class Task
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def get_time_required
    0.0
  end
end

class AddDryIngredientsTask < Task
  def initialize
    super('Add dry ingredients')
  end

  def get_time_required
    1.0 # 小麦粉と砂糖を加えるのに1分
  end
end

class AddLiquidsTask < Task
  def initialize
    super('Add liquids')
  end

  def get_time_required
    0.5 # 液体を注入するのに30秒
  end
end

class MixTask < Task
  def initialize
    super('Mix that batter up!')
  end

  def get_time_required
    3.0 # 混ぜるのに3分
  end
end
