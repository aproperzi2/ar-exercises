require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

#Fetch data
@total_revenue = Store.sum(:annual_revenue)
@average_revenue = Store.average(:annual_revenue)

#output data
puts "The total revenue from all the stores is: #{@total_revenue}"
puts "The average revenue from all the stores is: #{@average_revenue}"
puts "The number of stores generating revenue above $1,000,000: #{Store.where("annual_revenue >= 1000000").count}"
