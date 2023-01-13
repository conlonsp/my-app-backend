puts "Deleting previous data..."

Agent.destroy_all
Home.destroy_all
Appointment.destroy_all

puts "✅ Done deleting previous data!"

puts "🌱 Seeding agents..."


  Agent.create(
    name: Faker::Name.name,
    brokerage: Faker::Company.name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    profile_pic: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmstdy-egZ2VufcmlLN1vx0NyvoHQrwZ68Jg&usqp=CAU"
  )
  Agent.create(
    name: Faker::Name.name,
    brokerage: Faker::Company.name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    profile_pic: "https://cache.lovethispic.com/uploaded_images/blogs/10-Beautiful-Nature-Scenes-And-Landscapes-48771-7.jpeg"
  )
  Agent.create(
    name: Faker::Name.name,
    brokerage: Faker::Company.name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    profile_pic: "https://cache.lovethispic.com/uploaded_images/blogs/10-Beautiful-Nature-Scenes-And-Landscapes-48771-6.jpeg"
  )
  Agent.create(
    name: Faker::Name.name,
    brokerage: Faker::Company.name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    profile_pic: "https://cache.lovethispic.com/uploaded_images/blogs/10-Beautiful-Nature-Scenes-And-Landscapes-48771-9.jpeg"
  )
  Agent.create(
    name: Faker::Name.name,
    brokerage: Faker::Company.name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    profile_pic: "https://cache.lovethispic.com/uploaded_images/blogs/10-Beautiful-Nature-Scenes-And-Landscapes-48771-11.jpeg"
  )
  Agent.create(
    name: Faker::Name.name,
    brokerage: Faker::Company.name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    profile_pic: "https://cache.lovethispic.com/uploaded_images/blogs/10-Beautiful-Nature-Scenes-And-Landscapes-48771-10.jpeg"
  )

puts "✅ Done seeding agents!"

puts "🌱 Seeding homes..."

  Home.create(
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 10000, to: 10000000),
    square_feet: Faker::Number.between(from: 100, to: 10000),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpER4SGNMgmTzfA_xVr6LTjC7KMupphT_plg&usqp=CAU"
  )
  Home.create(
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 10000, to: 10000000),
    square_feet: Faker::Number.between(from: 100, to: 10000),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoHPbL5166xQmuvk-gutV3OHfry6TVrOS1ig&usqp=CAU"
  )
  Home.create(
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 10000, to: 10000000),
    square_feet: Faker::Number.between(from: 100, to: 10000),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5DojI4Gp5_shr2v4AAFjheOQUmXWOlPiwBg&usqp=CAUr"
  )
  Home.create(
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 10000, to: 10000000),
    square_feet: Faker::Number.between(from: 100, to: 10000),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs-YY-EefoKWZ-V8ols90LlC6qScGaPvT0eQ&usqp=CAU"
  )
  Home.create(
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 10000, to: 10000000),
    square_feet: Faker::Number.between(from: 100, to: 10000),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrAk6QvMzgiKwjrwc7Xp584oi9fEIw_mzn6g&usqp=CAU"
  )
  Home.create(
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 10000, to: 10000000),
    square_feet: Faker::Number.between(from: 100, to: 10000),
    image_url: "https://u.realgeeks.media/templetonrealestategroup/brewster-mcleod-architects-1486154143.jpeg"
  )
  Home.create(
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 10000, to: 10000000),
    square_feet: Faker::Number.between(from: 100, to: 10000),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOC0hdWeQdxG7-lNSrvBBzr8aHRfTFyy5t6AYT6Wbw20xr_TGMyayWOGC2HXXVwbiQSdo&usqp=CAU"
  )
  Home.create(
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 10000, to: 10000000),
    square_feet: Faker::Number.between(from: 100, to: 10000),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToZq8__MV2YRI0yqvzcTjdYcKtqTrl03hW3g&usqp=CAU"
  )
  Home.create(
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 10000, to: 10000000),
    square_feet: Faker::Number.between(from: 100, to: 10000),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBxAhnGdGoalPVfuZ5806w3vl4-BoAcYAckw&usqp=CAU"
  )
  Home.create(
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 10000, to: 10000000),
    square_feet: Faker::Number.between(from: 100, to: 10000),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVWjm_w4-fWLtpjuF93oWM2DAR8-paWPQZ8g&usqp=CAU"
  )

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
