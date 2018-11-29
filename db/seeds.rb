# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database"

Review.destroy_all
Booking.destroy_all
Thing.destroy_all
User.destroy_all

puts "Creating users..."

piero = User.new(first_name:"piero", last_name:"gatto", email:"piero@lewagon.fr", password:"sicilianstyle")
margot = User.new(first_name:"margot", last_name:"grelier", email:"margot@lewagon.fr", password:"ponystyle")
marion = User.new(first_name:"marion", last_name:"lambert", email:"marion@lewagon.fr", password:"catstyle")
piero.save!
margot.save!
marion.save!

puts "Users created successfully!"

puts 'Creating things...'

things_attributes = [
  {
    title: "Arc & Cible",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
    price: 10,
    remote_photo_url: 'https://image.darty.com/petit_electromenager/aspirateur-avec_sac_sans_sac/aspirateur_sans_sac/rowenta_ro6941ea_p1609064253965A_101345944.jpg',
    address: "23 rue Paradis Marseille",
    category: "Maison & Déco",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    ending_available_date: "2019-06-01",
    owner: piero
  },
  {
    title: "Arc & Flèches",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
    price: 10,
    address: "23 rue Paradis Marseille",
    category: "Evénement",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    ending_available_date: "2019-06-01",
    owner: marion
  },
  {
    title: "Aspirateur",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
    price: 10,
    address: "26 rue Paradis Marseille",
    category: "Matériel de jardin",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    ending_available_date: "2019-06-01",
    owner: marion
  },
  {
    title: "Bazooka",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
    price: 10,
    address: "28 rue Paradis Marseille",
    category: "Evénement",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    ending_available_date: "2019-06-01",
    owner: piero
  },
  {
    title: "Perçeuse",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
    price: 10,
    address: "30 rue Paradis Marseille",
    category: "Outillage & Travaux",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    ending_available_date: "2019-06-01",
    owner: piero
  },
  {
    title: "Sapin",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
    price: 10,
    address: "32 rue Paradis Marseille",
    category: "Maison & Déco",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    owner: margot
  },
  {
    title: "Aspirateur",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
    price: 10,
    address: "34 rue Paradis Marseille",
    category: "Electroménager",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    ending_available_date: "2019-06-01",
    owner: marion
  }
]

Thing.create!(things_attributes)

puts "Things created successfully!"

# puts "Creating things"

# perceuse = Thing.new(title:"perceuse", owner: piero, description:"perceuse multi fonction, adaptée à tous les supports",
# photo:"belle_photo", price:"5 euros par jour", street:"place 4 septembre", zip_code:"13007", city:"Marseille",
# country:"France", category:"outillage", days_nb_min:"1",
# days_nb_max:"7", starting_available_date:"maintenant", ending_available_date: "demain" )

# diable = Thing.new(title:"diable", owner: piero)
# chaises = Thing.new(title:"chaises", owner: margot)
# poubelles = Thing.new(title:"poubelles", owner: margot)
# raclette = Thing.new(title:"raclette", owner: marion)
# sapin = Thing.new(title:"sapin", owner: marion)
# perceuse.save!
# chaises.save!
# raclette.save!
# diable.save!
# sapin.save!
# poubelles.save!

# puts "other stuff created"

puts "Creating bookings..."

thing1 = Thing.first
thing2 = Thing.last
book1 = Booking.new(user: marion, thing: thing1)
book2 = Booking.new(user: piero, thing: thing2)
book1.save!
book2.save!

puts "Creating reviews"

review1 = Review.new(comment: "c'est trop chouette", booking: book1)
review2 = Review.new(comment: "c'est de la merde", booking: book2)
review1.save!
review2.save!

puts "reviews created"
