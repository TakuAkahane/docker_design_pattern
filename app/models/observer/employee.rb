require 'observer'

# module Subject
#   def initialize
#     @observers = []
#   end
#
#   def add_observer(&observer)
#     @observers << observer
#   end
#
#   def delete_observer(observer)
#     @observers.delete(observer)
#   end
#
#   def notify_observers(self)
#     @observers.each do |observer|
#       observer.call(self)
#     end
#   end
# end

class Employee
  include Observable

  attr_accessor :name, :title, :salary

  def initialize(name, title, salary)
    super()
    @name = name
    @title = title
    @salary = salary
  end

  def salary=(new_salary)
    old_salary = @salary
    @salary = new_salary
    if old_salary != new_salary
      changed
    end
  end

  def title=(new_title)
    old_title = @title
    @title = new_title
    if old_title != new_title
      changed = true
    end
  end

  def changes_complete
    notify_observers(self)
  end
end
