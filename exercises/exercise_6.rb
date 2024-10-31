require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
class Store < ActiveRecord::Base
  has_many :employees
end

# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
class Employee < ActiveRecord::Base
  belongs_to :store
end

# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`

#@store1 has been assigned to Store id = 1, as per previous exercises.
@store1.employees.create([
  { first_name: "Khurram", last_name: "Virani", hourly_rate: 60 },
  { first_name: "Jane", last_name: "Smith", hourly_rate: 75 },
  { first_name: "Bob", last_name: "Hughes", hourly_rate: 65 }
])

# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.
@store2.employees.create([
  { first_name: "Melina", last_name: "Gordon", hourly_rate: 50 },
  { first_name: "Jim", last_name: "Clancy", hourly_rate: 50 },
  { first_name: "Sam", last_name: "Morton", hourly_rate: 40 }
])

@store4 = Store.find(4)
@store4.employees.create([
  { first_name: "Carol", last_name: "Heir", hourly_rate: 45 },
  { first_name: "Ned", last_name: "Slone", hourly_rate: 40 },
  { first_name: "Angela", last_name: "Biggs", hourly_rate: 50 }
])

@store5 = Store.find(5)
@store5.employees.create([
  { first_name: "David", last_name: "Roar", hourly_rate: 70 },
  { first_name: "Dean", last_name: "Smart", hourly_rate: 75 },
  { first_name: "Gab", last_name: "Bright", hourly_rate: 75 }
])

@store6 = Store.find(6)
@store6.employees.create([
  { first_name: "Mhera", last_name: "Les", hourly_rate: 55 },
  { first_name: "Raf", last_name: "Mags", hourly_rate: 55 },
  { first_name: "Lime", last_name: "Carlson", hourly_rate: 50 }
])