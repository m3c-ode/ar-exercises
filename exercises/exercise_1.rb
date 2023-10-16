require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Create 3 stores then display the count
burnaby = Store.create(
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)
richmond = Store.create(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)
gastown = Store.create(
  name: "Gastown",
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)

# wrong test
# toosmall = Store.create!(
#   name: "aa",
#   annual_revenue: 190000,
#   mens_apparel: true,
#   womens_apparel: false
# )

# wrongrevenue = Store.create!(
#   name: "long enough name",
#   annual_revenue: -10,
#   mens_apparel: true,
#   womens_apparel: false
# )

wrong_apparel = Store.create!(
  name: "long enough name",
  annual_revenue: 53635,
  mens_apparel: false,
  womens_apparel: false
)

# Shows the number of stores Created
puts "Created #{Store.all.count} stores"
