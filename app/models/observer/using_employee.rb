fred = Employee.new('Fred', 'Crane Operator', 30000)

fred.add_observer do |changed_employee|
  puts("cut a check for #{changed_employee.name}")
  puts("his salary is #{changed_employee.salary}")
end

fred.salary = 1_000_000
fred.title = 'Vice President of Sales'

###############################################################################

fred = Employee.new('Fred', 'Crane Operator', 30000)

fred.add_observer do |changed_employee|
  puts("cut a check for #{changed_employee.name}")
  puts("his salary is #{changed_employee.salary}")
end

fred.salary = 1000000
fred.title = 'Vice President of Sales'
fred.changes_complete
