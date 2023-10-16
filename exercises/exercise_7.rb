require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Asks User input
puts "Hello Dear Sir, what's the name of the store you want to create today?"
store_name = gets.chomp

@user_store = Store.create(
  name: store_name,
  annual_revenue: 0,
  mens_apparel: false,
  womens_apparel: false
)

# Display errors if exist
if @user_store.errors
  puts "Sorry sir, there are errors with your entry"
  @user_store.errors.full_messages.each {|error| puts error}
  # exit(0)
end
