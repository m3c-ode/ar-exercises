require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Create 3 more stores , select mens stores, output their names and annual_revenue
surrey = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)
whistler = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)
yaletown = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

@mens_store = Store.where(mens_apparel: true, womens_apparel: false)

puts "#{@mens_store}"

@mens_store.each {|store| puts "Store name: #{store.name}. Revenue: #{store.annual_revenue}$"}

# @womens_store = Store.where("womens_apparel= true AND annual_revenue < 1000000")
@womens_store = Store.where(womens_apparel: true).where('annual_revenue > 1000000')

@womens_store.each {|store| puts "Store name: #{store.name}. Revenue: #{store.annual_revenue}$"}