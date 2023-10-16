require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Adding employees in Store. .create! is strict and will throw an error if incorrect validation
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jean", last_name: "Michel", hourly_rate: 30)
@store1.employees.create(first_name: "Jt", last_name: "Smith", hourly_rate: 60)
@store2.employees.create(first_name: "Brett", last_name: "Roberts", hourly_rate: 50)
@store2.employees.create(first_name: "chandani", last_name: "Virani", hourly_rate: 40)
@store2.employees.create!(first_name: "Tushar", last_name: "Blabla", hourly_rate: 44)
# wrong test
# @store2.employees.create!(first_name: "maxime", last_name: "Me", hourly_rate: 20)
@store2.employees.create!(first_name: "maxime", last_name: "Me", hourly_rate: 66)
