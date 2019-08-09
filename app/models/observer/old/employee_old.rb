class Payroll
  def update(changed_employee)
    puts("cut a check for #{changed_employee.name}")
    puts("his salary is #{changed_employee.salary} now")
  end
end

class TaxMan
  def update(changed_employee)
    puts("send a new tax invoice to #{changed_employee.name}")
  end
end

class Employee
  attr_reader :name, :title
  attr_accessor :salary

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @observers = []
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end

  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end
end
