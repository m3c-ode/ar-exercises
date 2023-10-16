require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Update the first store
@store1 = Store.find_by(id: 1)
@store1.update(annual_revenue: 311111)

p @store1

@store2 = Store.find_by(id: 2)
