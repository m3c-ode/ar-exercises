require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Creating a new employee with a callback for password
employee1 = @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

puts "Created new employee: #{employee1.attributes}"
# p employee1

found_employee = Employee.find_by(id: 1)
# found_employee.update(first_name: "Maxime")
p found_employee