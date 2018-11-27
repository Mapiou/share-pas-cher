# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
piero = User.new(first_name:"piero", last_name:"gatto", email:"nonnon@lewagon.fr", password:"sicilianstyle")
margot = User.new(first_name:"margot", last_name:"grelier", email:"ouioui@lewagon.fr", password:"ponystyle")
marion = User.new(first_name:"marion", last_name:"lambert", email:"marion@lewagon.fr", password:"catstyle")
piero.save!
margot.save!
marion.save!

perceuse = Thing.new(title:"perceuse", owner: piero)
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

review1 = Review.new(comment: "c'est trop chouette", booking: book1)
review2 = Review.new(comment: "c'est de la merde", booking: book3)
review3 = Review.new(comment: "j'ai vomi", booking: book5)
review3.save!
review2.save!
review1.save!
