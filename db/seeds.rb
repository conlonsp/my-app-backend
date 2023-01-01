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
    agent_id: Agent.all.sample.id
  )
end

puts "✅ Done seeding homes!"

puts "🌱 Seeding appointments..."

10.times do 
  Appointment.create(
    scheduler: Faker::Name.name,
    time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
    agent_id: Agent.all.sample.id,
    home_id: Home.all.sample.id,
  )
end

puts "✅ Done seeding appointments!"
