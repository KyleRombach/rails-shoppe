# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  Product.create(name: Faker::Hacker.noun, price: Faker::Number.decimal(2), stock: Faker::Number.number(2), image: Faker::Avatar.image)
end

5.times do
  User.create(name: Faker::Name.first_name , address:Faker::Address.street_address, postal_code:Faker::Address.postcode , country:Faker::Address.country_code, city: Faker::Address.city, phone:Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, encrypted_password: "password")
end

User.create(name: 'tom', email: 'tom@tom.com', password: 'tomtom')
User.create(name: 'tim', email: 'tim@tim.com', password: 'timtim', admin: true)

Category.create(name: "Electronics")
Category.create(name: "Furniture")
Category.create(name: "Groceries")
Category.create(name: "Sports")