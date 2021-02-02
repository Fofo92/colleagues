# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting old Seed..."

Event.destroy_all

puts "Creating new events..."

# .each not working

# Event.new(name: "Disneyland", description: "Parc à thème familial", location: "Paris")
# Event.new(name: "Futuroscope", description: "Parc à thème technologie", location: "Poitiers")
# Event.new(name: "Cinéma CGR", description: "Groupe de salles de cinéma", location: "Sarcelles")
# Event.new(name: "Chamonix", description: "Station de ski", location: "Chamonix")
# Event.new(name: "Beatles", description: "Concert d'un grand groupe à Paris", location: "Bercy")

# Event.each do |e|
#   e.create!
#   puts "#{e.name} created!"
# end

d = Event.create!(name: "Disneyland", description: "Parc à thème familial", location: "Paris")
f = Event.create!(name: "Futuroscope", description: "Parc à thème technologie", location: "Poitiers")
cgr = Event.create!(name: "Cinéma CGR", description: "Groupe de salles de cinéma", location: "Sarcelles")
chx = Event.create!(name: "Chamonix", description: "Station de ski", location: "Chamonix")
b = Event.create!(name: "Beatles", description: "Concert d'un grand groupe à Paris", location: "Bercy")

[d, f, cgr, chx, b].each do |type|
  puts "#{type.name} created!"
end

puts "All events created!"
