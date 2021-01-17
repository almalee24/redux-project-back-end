# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times {
    Company.create(name: Faker::Restaurant.name, location: Faker::Address.full_address)
}

Good.create(
    name: Faker::Food.ingredient,
    weight: Faker::Commerce.price(range: 0..10.0),
    price: Faker::Commerce.price(range: 0..10.0),
    company_id: 1
)
Good.create(
    name: Faker::Food.ingredient,
    weight: Faker::Commerce.price(range: 0..10.0),
    price: Faker::Commerce.price(range: 0..10.0),
    company_id: 2
)
Good.create(
    name: Faker::Food.ingredient,
    weight: Faker::Commerce.price(range: 0..10.0),
    price: Faker::Commerce.price(range: 0..10.0),
    company_id: 3
)
Good.create(
    name: Faker::Food.ingredient,
    weight: Faker::Commerce.price(range: 0..10.0),
    price: Faker::Commerce.price(range: 0..10.0),
    company_id: 4
)
Good.create(
    name: Faker::Food.ingredient,
    weight: Faker::Commerce.price(range: 0..10.0),
    price: Faker::Commerce.price(range: 0..10.0),
    company_id: 5
)

User.create(
    name: "almalee",
    username: 'almalee',
    password: 'almalee'
)
