require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Eric", last_name: "L", hourly_rate: 20)
@store1.employees.create(first_name: "stew", last_name: "katz", hourly_rate: 20)
@store1.employees.create(first_name: "sylvia", last_name: "palmer", hourly_rate: 30)
@store1.employees.create(first_name: "victor", last_name: "lee", hourly_rate: 40)

@store2.employees.create(first_name: "shawn", last_name: "evans", hourly_rate: 40)
@store2.employees.create(first_name: "laura", last_name: "brown", hourly_rate: 40)
@store2.employees.create(first_name: "sam", last_name: "smith", hourly_rate: 40)
@store2.employees.create(first_name: "chelsea", last_name: "handler", hourly_rate: 40)
@store2.employees.create(first_name: "san", last_name: "tiago", hourly_rate: 90)

puts "THE AMOUNT OF EMPLOYEES: #{Employee.count}"

