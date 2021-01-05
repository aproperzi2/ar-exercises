require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Inserting stores into database
store1 = Store.create(name: "Surrey", annual_revenue: 22400, mens_apparel: false, womens_apparel: true)
store2 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store3 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

store1.save
store2.save
store3.save

# Using where clause, fetch a collection of stores that only sell mens apparel, assign to @mens_stores
@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each { 
  |store| 
  puts "#{store.name}: $#{store.annual_revenue}" 
}

puts "-------------------------------------------------------------"

# Using where clause, fetch a collection of stores that sell womens apparel and have an annual revenue of under 1000000
@womens_stores = Store.where("womens_apparel = true and annual_revenue < 1000000")

@womens_stores.each { 
  |store| 
  puts "#{store.name}: $#{store.annual_revenue}" 
}

