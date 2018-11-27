# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Booking.destroy_all

Thing.destroy_all
User.destroy_all

puts "building users"

piero = User.new(first_name:"piero", last_name:"gatto", email:"nonnonnon@lewagon.fr", phone:"0764524265", password:"sicilianstyle")
margot = User.new(first_name:"margot", last_name:"grelier", email:"ouioui@lewagon.fr", password:"ponystyle")
marion = User.new(first_name:"marion", last_name:"lambert", email:"marion@lewagon.fr", password:"catstyle")
piero.save!
margot.save!
marion.save!

puts "users created successfully"

puts "creating fullseed piero"

perceuse = Thing.new(title:"perceuse", owner: piero, description:"perceuse multi fonction, adaptée à tous les supports",
photo:"belle_photo", price:"5 euros par jour", street:"place 4 septembre", zip_code:"13007", city:"Marseille",
country:"France", category:"outillage", days_nb_min:"1",
days_nb_max:"7", starting_available_date:"maintenant", ending_available_date: "demain" )

puts "fullseed piero successfully created"

puts "creating other stuff"

diable = Thing.new(title:"diable", owner: piero)
chaises = Thing.new(title:"chaises", owner: margot)
poubelles = Thing.new(title:"poubelles", owner: margot)
raclette = Thing.new(title:"raclette", owner: marion)
sapin = Thing.new(title:"sapin", owner: marion)
perceuse.save!
chaises.save!
raclette.save!
diable.save!
sapin.save!
poubelles.save!

puts "other stuff created"

puts "creating booking seeds"

book1 = Booking.new(user: marion, thing: chaises)
book2 = Booking.new(user: piero, thing: raclette)
book3 = Booking.new(user: margot, thing: perceuse)
book4 = Booking.new(user: margot, thing: raclette)
book5 = Booking.new(user: marion, thing: perceuse)
book1.save!
book2.save!
book3.save!
book4.save!
book5.save!

"puts reviews created"

puts "creating reviews seed"

review1 = Review.new(comment: "c'est trop chouette", booking: book1)
review2 = Review.new(comment: "c'est de la merde", booking: book3)
review3 = Review.new(comment: "j'ai vomi", booking: book5)
review3.save!
review2.save!
review1.save!

puts "reviews created"