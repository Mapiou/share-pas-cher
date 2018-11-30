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
    title: "Sabre Laser rouge",
    description: "Ayant renoncé au côté obscur de la force, je me sépare de mon précieux sabre",
    price: 10,
    remote_photo_url: 'https://static.hitek.fr/img/actualite/2017/03/13/fb_star-wars-signifient-couleurs-sabres-lasers-53955.jpg',
    address: "23 rue Paradis Marseille",
    category: "High Tech",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    ending_available_date: "2019-06-01",
    owner: piero
  },
  {
    title: "Appareil à raclette",
    description: "Un incontournable de vos soirées d'hiver, (max 8 personnes, raclette non fournie*)",
    price: 8,
    remote_photo_url: 'https://www.appareil-raclette.com/wp-content/uploads/2016/10/Appareil-%C3%A0-raclette-Tefal-RE138012.jpg',
    address: "23 rue Paradis Marseille",
    category: "Evénement",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    ending_available_date: "2019-06-01",
    owner: marion
  },
  {
    title: "Karsher Sarko",
    description: "Karsher de marque Hongroise, très bonne qualité!",
    price: 10,
    remote_photo_url: 'https://images-na.ssl-images-amazon.com/images/I/81aXGujSwJL._SL1500_.jpg',
    address: "26 rue Paradis Nantes",
    category: "Matériel de jardin",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    ending_available_date: "2019-06-01",
    owner: marion
  },
  {
    title: "Ballon de volley Wilson",
    description: "Un compagnon fidèle pour vous accompagner, pensez à le regonfler après",
    price: 10,
    remote_photo_url: 'https://www.avantjetaisriche.com/wp-content/uploads/2017/01/Ballon-wilson-seul-au-monde-film.jpg',
    address: "Lyon",
    category: "Evénement",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    ending_available_date: "2019-06-01",
    owner: piero
  },
  {
    title: "Gants de boxe",
    description: "Adriennnneeeeeeeeeeeeeeeeeeeeeeeeeeee!",
    price: 30,
    remote_photo_url: 'https://www.ballecourbe.ca/wp-content/uploads/2018/11/maxresdefault-1-960x540.jpg',
    address: "New York",
    category: "Outillage & Travaux",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    ending_available_date: "2019-06-01",
    owner: piero
  },
  {
    title: "Sapin",
    description: "Sapin de Nöel artificiel pour des fêtes réussies, guirlandes fournies",
    price: 20,
    remote_photo_url: 'https://i.pinimg.com/originals/03/8e/6c/038e6cb9ebb917333fcb0a5d0952ef9e.jpg',
    address: "32 rue Paradis Marseille",
    category: "Maison & Déco",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    owner: margot
  },
  {
    title: "Voiture Dolorean",
    description: "fonctionne avec thermo réacteur à fusion gamma, un plein = 1 barre d'uranium",
    price: 1000,
    remote_photo_url: 'https://i2.cdscdn.com/pdt2/6/5/2/1/700x700/wel4045591010652/rw/delorean-retour-vers-le-futur-1-24-welly.jpg',
    address: "Las Vegas",
    category: "Electroménager",
    days_nb_min: 1,
    days_nb_max: 7,
    starting_available_date: "2018-11-01",
    ending_available_date: "2019-06-01",
    owner: marion
  },
    {
    title: "Gants taille-haies",
    description: "Superbe gants ergonomiques pour tailler les haies, validés par Fred Krueger et Edward main d'argent!",
    price: 10,
    remote_photo_url: 'https://cdn.deguisetoi.fr/images/rep_art/gra/171/7/171704/gant-luxe-freddy-krueger-adulte_171704.jpg',
    address: "hollywood studios",
    category: "Outillage & Travaux",
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
book1 = Booking.new(user: marion, thing: thing1,arrival_date: "2018-11-01",departure_date: "2018-11-04")
book2 = Booking.new(user: piero, thing: thing2,arrival_date: "2018-11-12",departure_date: "2018-11-20")
book1.save!
book2.save!

puts "Creating reviews"

review1 = Review.new(comment: "c'est trop chouette", booking: book1)
review2 = Review.new(comment: "c'est de la merde", booking: book2)
review1.save!
review2.save!

puts "reviews created"
