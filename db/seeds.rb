puts "Deleting previous data..."

Agent.destroy_all
Home.destroy_all
Appointment.destroy_all

puts "✅ Done deleting previous data!"

puts "🌱 Seeding agents..."

5.times do
  Agent.create(
    name: Faker::Name.name,
    brokerage: Faker::Company.name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end

puts "✅ Done seeding agents!"

puts "🌱 Seeding homes..."

10.times do
  Home.create(
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 10000, to: 10000000),
    square_feet: Faker::Number.between(from: 100, to: 10000),
    image_url: Faker::LoremFlickr.image(size: "320x240", search_terms: ['house', 'home', 'homes'], match_all: true)
  )
end

Faker::LoremFlickr.image(size: "50x60", search_terms: ['sports', 'fitness'], match_all: true)

puts "✅ Done seeding homes!"

puts "🌱 Seeding appointments..."

10.times do 
  Appointment.create(
    scheduler: Faker::Name.name,
    time: Faker::Time.between(from: DateTime.now, to: DateTime.now + 30, format: :long),
    agent_id: Agent.all.sample.id,
    home_id: Home.all.sample.id
  )
end

puts "✅ Done seeding appointments!"
