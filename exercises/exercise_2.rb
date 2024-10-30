require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find(1)
@store2 = Store.find(2)

@store1.update(name: "Update_Burnaby")
@store1.save

p @store1.name # => "Update_Burnaby"
p @store2.name # => "Richmond"
