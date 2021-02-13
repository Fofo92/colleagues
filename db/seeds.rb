# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
puts ''
puts 'Resetting users table'
puts ''
puts 'Start seeding users'

# file = URI.open("https://res.cloudinary.com/fofo921/image/upload/v1612272291/jh1uypwwyr8u8dkj2xft6447yjpy.jpg")
# user = User.create!(first_name: 'Pascal', last_name: 'Fodiman', email: "pascal.fodiman@world_company.com", password: "123456")
# user.photo.attach(io: file, filename: 'Fodiman.jpg', content_type: 'image/jpg')

# User.create!(first_name: 'Sébastien', last_name: 'Scirpo', email: "sebastien.scirpo@world_company.com", password: "123456")
# User.create!(first_name: 'Antoine', last_name: 'Ung Bao', email: "antoine.ung_bao@world_company.com", password: "123456")
# User.create!(first_name: 'Raphaël', last_name: 'Mosca', email: "raphael.mosca@world_company.com", password: "123456")
# User.create!(first_name: 'Charlie', last_name: 'Bertrand', email: "charlie.bertrand@world_company.com", password: "123456")
# User.create!(first_name: 'Olivia', last_name: 'Bihl', email: "olivia.bihl@world_company.com", password: "123456")
# User.create!(first_name: 'Coline', last_name: 'Juillerat', email: "coline.juillerat@world_company.com", password: "123456")
# User.create!(first_name: 'Richard', last_name: 'Bates', email: "richard.bates@world_company.com", password: "123456")
# User.create!(first_name: 'Rindra', last_name: 'Randrianasolo', email: "rindra.randrianasolo@world_company.com", password: "123456")
# User.create!(first_name: 'Cheikhou', last_name: 'Diakhaby', email: "cheikhou.diakhaby@world_company.com", password: "123456")
# User.create!(first_name: 'Myriam', last_name: 'Faucher-Pelletier', email: "myriam.faucher-pelletier@world_company.com", password: "123456")
# User.create!(first_name: 'Félix', last_name: 'Deperthuis', email: "felix.deperthuis@world_company.com", password: "123456")
# User.create!(first_name: 'Amélien', last_name: 'Delahaie', email: "amelien.delahaye@world_company.com", password: "123456")
# User.create!(first_name: 'Anna', last_name: 'Naydenova', email: "#anna.naydenova@world_company.com", password: "123456")
# User.create!(first_name: 'Audrey', last_name: 'De Marco', email: "audrey.de_marco@world_company.com", password: "123456")
# User.create!(first_name: 'Alexis', last_name: 'Zaffalon', email: "alexis.zaffalon@world_company.com", password: "123456")
# User.create!(first_name: 'Simon', last_name: 'Dautun', email: "simon.dautun@world_company.com", password: "123456")
# User.all.each do |user|
#   puts "User #{user.last_name} created successfully"
# end

# puts "Seeding users completed - #{User.count} users created"
puts ''

puts 'Resetting events table'
Event.destroy_all
puts 'Start seeding events'
Event.create(
  name: "Une smeaine tout schuss à Val Thorens",
  description: "Au cœur de la Trentaise, Val-Thorens est une station savoyarde, la plus haute d'Europe! Chambres doubles ou individuelles (sur demande)",
  starts_at: "20/03/2021",
  ends_at: "27/03/2021",
  user_id: 1,
  location: "Val Thorens, Les Belleville, Auvergne-Rhône-Alpes, France",
  price: 400,
  max_booking: 50)

Event.create(
  name: "Croisière promenade sur la Seine",
  description: "Venez découvrir, le temps d'une croisière, Paris par sa plus belle avenue : la Seine.
  Participez à un dîner en collègues au fil de l'eau en visitant de manière originale les plus beaux monuments
   parisiens sur l’un de nos bateaux-mouche : La Tour Eiffel, le Louvre, Notre Dame de Paris, La Conciergerie, le Musée d’Orsay…  et les monuments qui font la richesse du patrimoine parisien.   ",
  starts_at: "20/03/2021",
  ends_at: "27/03/2021",
  user_id: 1,
  location: "Port de la Conférence, Paris 8e Arrondissement, Île-de-France, France",
  price: 20,
  max_booking: 10)
Event.create(
  name: "Concert à la Philharmonie de Paris",
  description: "K. Zimmermann joue les concertos n° 3 et 4 pour piano et orchstre de L. van Beethoven. Rarissime",
  starts_at: "20/03/2021",
  ends_at: "20/03/2021",
  user_id: 1,
  location: "221 Avenue Jean Jaurès, 75019 Paris",
  price: 150,
  max_booking: 150)


puts "Events created"
puts ''
puts "Seeding events ended"
