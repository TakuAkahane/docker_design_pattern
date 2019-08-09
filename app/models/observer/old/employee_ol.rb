require 'observer'
class Employee < Subject
  include Observable

  attr_reader :name, :address
  attr_reader :salary

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    changed
    notify_observers
  end
end
