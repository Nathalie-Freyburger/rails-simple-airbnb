# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
4.times do
    Flat.create!(
        name: Faker::Games::Overwatch.hero,
        address: Faker::Games::Overwatch.location,
        description: Faker::Games::Overwatch.quote,
        price_per_night: Faker::Number.between(from: 30, to: 90),
        number_of_guests: Faker::Number.between(from: 1, to: 6)
    )
end