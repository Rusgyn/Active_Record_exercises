require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

#1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.

puts Store.sum(:annual_revenue)
