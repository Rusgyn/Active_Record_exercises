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
#1.
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates :store, presence: true
end

class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :must_have_apparel

  private

  def must_have_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "Store must have at least one mens or womens apparel.")
    end
  end
end

#2. Ask the user for a store name (store it in a variable)
puts "Tell me a store name "
answer = gets.chomp
puts answer

#3.Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
store = Store.new(name: answer)
if store.save
  puts "Store #{store.name} created successfully"

#4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
else
  puts "Error creating store: " 
  store.errors.full_messages.each do |message|
    puts message
  end
end

