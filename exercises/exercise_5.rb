require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Sum total revenue of all stores
@stores_all = Store.all

total = @stores_all.sum(:annual_revenue)

# or use .count
average = total / @stores_all.size

# or Store.sum(...)
puts "Total revenue: #{total}"

puts "Average revenue for all: #{average}"
