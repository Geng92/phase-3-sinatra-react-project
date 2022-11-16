puts "destroying all tables"
Traveler.destroy_all
Trip.destroy_all
Destination.destroy_all
Favorite.destroy_all
puts "🌱 Seeding spices..."
# Seed your database here
8.times do
    Traveler.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        image: Faker::Avatar.image
    )
end

5.times do
    Trip.create(
        date: Faker::Date.backward,
        traveler_id: Destination.all.ids.sample,
        destination_id: Traveler.all.ids.sample
    )
end

10.times do
    Destination.create(
        location: Faker::Nation.capital_city,
        climate: Faker::Currency.name,
        population: rand(1..100),
        image: Faker::Avatar.image
    )
end

3.times do
    Favorite.create(
        traveler_id: Destination.all.ids.sample,
        destination_id: Traveler.all.ids.sample
    )
end
puts "✅ Done seeding!"
