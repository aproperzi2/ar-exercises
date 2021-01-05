require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Add data into employees
@store1.employees.create(first_name: "Luca", last_name: "Properzi", hourly_rate: 150)
@store1.employees.create(first_name: "Zach", last_name: "Grams", hourly_rate: 130)
@store1.employees.create(first_name: "Mark", last_name: "Seifeddine", hourly_rate: 15)
@store1.employees.create(first_name: "Dylan", last_name: "Toews", hourly_rate: 5)

@store2.employees.create(first_name: "Andy", last_name: "Lechelt", hourly_rate: 160)
@store2.employees.create(first_name: "Alyssa", last_name: "Grams", hourly_rate: 53)
@store2.employees.create(first_name: "Samy", last_name: "Seifeddine", hourly_rate: 16)
@store2.employees.create(first_name: "Joel", last_name: "Toews", hourly_rate: 60)

@store4 = Store.find(4)

@store4.employees.create(first_name: "Ernie", last_name: "Properzi", hourly_rate: 150)
@store4.employees.create(first_name: "Monica", last_name: "McKort", hourly_rate: 130)
@store4.employees.create(first_name: "Mark", last_name: "Seifeddine", hourly_rate: 15)
@store4.employees.create(first_name: "Dylan", last_name: "Toews", hourly_rate: 5)
