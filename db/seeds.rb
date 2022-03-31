puts "🌱 Seeding spices..."

puts "users"

10.times do 
    User.create(name: Faker::Name.name)
end

puts "location"

10.times do 
    Location.create(title: Faker::Address.country)
end

puts "trips"

10.times do 
    theUser= User.ids.sample
    theLocation= Location.ids.sample

    Trip.create(name: Faker::Address.city, user_id: theUser, location_id: theLocation)
end


puts "✅ Done seeding!"