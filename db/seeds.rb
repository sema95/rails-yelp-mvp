# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
CATEGORY = %w[chinese italian japanese french belgian].freeze

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating fake restaurants...'
10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    category: CATEGORY.sample,
  )
end
puts 'DONE!!'
