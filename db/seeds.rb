puts "🌱 Seeding spices..."

# Seed your database here
Agent.create(name: "Sam", brokerage: "Sam & Noot Realty", email: "sam@samandnoot.com", phone_number: 1112223333)
Agent.create(name: "Noot", brokerage: "Sam & Noot Realty", email: "noot@samandnoot.com", phone_number: 2223334444)
Agent.create(name: "Tim", brokerage: "Free Real Estate", email: "tim@freere.net", phone_number: 3334445555)
Agent.create(name: "Eric", brokerage: "Free Real Estate", email: "eric@freere.net", phone_number: 4445556666)

Home.create(address: "123 Home Drive, Townville, MA, 03452", price: 250000, square_feet: 1200, agent_id: Agent.first.id)
Home.create(address: "1212 Court Ct, Appletree, VA, 21772", price: 345000, square_feet: 2500, agent_id: Agent.second.id)
Home.create(address: "52 First Street, Whiskey, TN, 37621", price: 625000, square_feet: 635, agent_id: Agent.third.id)
Home.create(address: "43125 Cobblestone Way, Baytown, ME, 56012", price: 800000, square_feet: 2200, agent_id: Agent.fourth.id)
Home.create(address: "893 High Street, Evergreen, OR, 77802", price: 500000, square_feet: 1200, agent_id: Agent.first.id)
Home.create(address: "32324 Next Lane, Beachside, FL, 44813", price: 580000, square_feet: 4500, agent_id: Agent.second.id)
Home.create(address: "22 Garden Ave, Garden, NJ, 89011", price: 220000, square_feet: 1000, agent_id: Agent.third.id)
Home.create(address: "3 Third Place, Third, TX, 33321", price: 3000000, square_feet: 333, agent_id: Agent.fourth.id)

puts "✅ Done seeding!"
