class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(&formatter)
    @title = 'monthly report'
    @text = ['good', 'not bad']
    @formatter = formatter
  end

  def output_report()
    @formatter.call(self)
  end
end
