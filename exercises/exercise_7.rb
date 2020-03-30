require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# @store1.employees.create(first_name: "", last_name: "", hourly_rate: 10)

employee = Employee.new
employee.first_name = "Billy"
employee.last_name = "Bob"
employee.hourly_rate = 150
employee.store_id = 2
employee.save!

puts "AMOUNT OF EMPLOYEES AT STORE 2: #{Employee.where(store_id: 2).count}"
puts "STORE name of ID 2: #{Store.where(id: 2)[0].name}"

store7 = Store.new
store7.name = "Dallas"
store7.annual_revenue = 1000001
store7.womens_apparel = true
store7.save!

puts "WRITE OUT A STORE NAME: "
user_store_name = gets.chomp
puts "USER HAS WRITTEN: #{user_store_name}"
store8 = Store.new
store8.name = user_store_name
store8.save
puts store8.errors.full_messages