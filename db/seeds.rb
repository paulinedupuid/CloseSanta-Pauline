# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'
require "open-uri"

# cleaning the database
Reservation.destroy_all
Offer.destroy_all
User.destroy_all

# Users

johndoe = User.create!(firstname: "John", lastname: "Doe", email: "johndoe@yahoo.fr", password: "123456")
paulmaccartney = User.create!(firstname: "Paul", lastname: "MacCartney", email: "paulmaccartney@lycos.org",
                              password: "123456")
lennon = User.create!(firstname: "John", lastname: "Lennon", email: "johnlennon@gmail.com", password: "123456")
mathilda = User.create!(firstname: "Mathilda", lastname: "Sorich", email: "mathildanana@hotmail.fr", password: "123456")
romeo = User.create!(firstname: "Romeo", lastname: "Montaigu", email: "romeromontacru@hotmail.fr", password: "123456")
santa = User.create!(firstname: "Santa", lastname: "Clause", email: "santaclause@google.lap", password: "123456")

# Offers

file = URI.open('https://res.cloudinary.com/dn5lpurr4/image/upload/v1639578231/development/nmxcoqy7rp1v84whnviabbivzf5n.jpg')
offers1 = Offer.new(location: "Nice", availability: Date.new(2021, 12, 24), price_per_hour: 80,
                    offer_description: "the best santa in Nice and around, go throw your chimney,
                    say HohoHo like nobody and adorable with the childrens",
                    title: "The best Santa of Cote d'Azur",
                    santa_description: "natural belly, beautifull beard, quality costume and I come with
                    my own reindeer ")
offers1.user = johndoe
offers1.photo.attach(io: file, filename: 'johndoepic', content_type: 'image/jpg')
offers1.save!

file = URI.open('https://res.cloudinary.com/dn5lpurr4/image/upload/v1639580337/development/paul_cyeqep.jpg')
offers2 = Offer.new(location: "Cannes", availability: Date.new(2021, 12, 20), price_per_hour: 60,
                    offer_description: "If you need a good santa in Cannes, don't look further, I'm graduate from
                    the Santa school, clean, kind, and I had for you a great show.",
                    title: "Santa in Cannes",
                    santa_description: "gratuated from santa school, natural beard, 6 year of experience and a guarantee
                    for your enjoyement, just choose the good santa. ")
offers2.user = paulmaccartney
offers2.photo.attach(io: file, filename: 'paulpic', content_type: 'image/jpg')
offers2.save!

file = URI.open('https://res.cloudinary.com/dn5lpurr4/image/upload/v1639580337/development/paul_cyeqep.jpg')
offers3 = Offer.new(location: "Cannes", availability: Date.new(2021, 12, 25), price_per_hour: 90,
                    offer_description: "I can come for your christmas day to give your gift to your child, make their
                    christmas be a real and magical experience.",
                    title: "Santa for christmas",
                    santa_description: "gratuated from santa school, natural beard, 6 year of experience and a guarantee
                    for your enjoyement, just choose the good santa. ")
offers3.user = paulmaccartney
offers3.photo.attach(io: file, filename: 'paulpic', content_type: 'image/jpg')
offers3.save!

file = URI.open('https://res.cloudinary.com/dn5lpurr4/image/upload/v1639580336/development/lennon_zbmwbz.jpg')
offers4 = Offer.new(location: "Marseille", availability: Date.new(2021, 12, 16), price_per_hour: 60,
                    offer_description: "You search a Santa for your christmas and I'm the older Santa of Marseille,
                    30 years of experience, sober, clean, I can take care of the wish of your familly !",
                    title: "Massilia Santa",
                    santa_description: "Santa of Massilia, the must of the cannebiere, I can bring the magic in your
                    christmas time.")
offers4.user = lennon
offers4.photo.attach(io: file, filename: 'lennonpic', content_type: 'image/jpg')
offers4.save!


file = URI.open('https://res.cloudinary.com/dn5lpurr4/image/upload/v1639580336/development/lennon_zbmwbz.jpg')
offers5 = Offer.new(location: "Marseille", availability: Date.new(2021, 12, 23), price_per_hour: 90,
                    offer_description: "Christmas approach, bring a magical gift to your childs with this unique
                    experience.",
                    title: "Massilia Santa for holidays",
                    santa_description: "Santa of Massilia, the must of the cannebiere, I can bring the magic in your
                    christmas time.")
offers5.user = lennon
offers5.photo.attach(io: file, filename: 'lennonpic', content_type: 'image/jpg')
offers5.save!

file = URI.open('https://res.cloudinary.com/dn5lpurr4/image/upload/v1639580336/development/lennon_zbmwbz.jpg')
offers6 = Offer.new(location: "Marseille", availability: Date.new(2021, 12, 31), price_per_hour: 80,
                    offer_description: "What is best than a Santa for your Christmas ? Santa Claus can be here to your
                    new year, for particular, enterprise, bring some christmas magic after christmas and enjoy your
                    holidays.",
                    title: "Santa for your 'Reveillon'",
                    santa_description: "30 years fo experience, gratuated of the Santa school, professionnal,
                    I guarantee you the best prestation.")
offers6.user = lennon
offers6.photo.attach(io: file, filename: 'lennonpic', content_type: 'image/jpg')
offers6.save!

file = URI.open('https://res.cloudinary.com/dn5lpurr4/image/upload/v1639580336/development/romeo_f6n1wk.jpg')
offers7 = Offer.new(location: "Nice", availability: Date.new(2021, 12, 18), price_per_hour: 70,
                    offer_description: "On your holiday, choose the perfect Santa Claus to enjoy christmas time",
                    title: "Nice Santa",
                    santa_description: "A hot chocolate and a hot santa, the best Christmas combination.")
offers7.user = romeo
offers7.photo.attach(io: file, filename: 'romeopic', content_type: 'image/jpg')
offers7.save!

file = URI.open('https://res.cloudinary.com/dn5lpurr4/image/upload/v1639580336/development/santa_nippsl.jpg')
offers8 = Offer.new(location: "France", availability: Date.new(2021, 12, 21), price_per_hour: 0,
                    offer_description: "Ho HO Ho it's almost christmas, don't forget to be a good child and make your
                    wishlist.",
                    title: "The real Santa",
                    santa_description: "Since a long time, I bring joy to all the childs in the world.")
offers8.user = santa
offers8.photo.attach(io: file, filename: 'romeopic', content_type: 'image/jpg')
offers8.save!

# Reservation


reservation1 = Reservation.new(event_adress: "27 avenue Thiers, Nice", status: "pending", start_time:
                              Time.new(2021, 12, 23, 8, 24, 45), end_time: Time.new(2021, 12, 23, 10, 24, 45))
reservation1.user = lennon
reservation1.offer = offers1
reservation1.save!

reservation2 = Reservation.new(event_adress: "30 Rue Henri Paschke, Cannes", status: "pending", start_time:
  Time.new(2021, 12, 25, 9, 30), end_time: Time.new(2021, 12, 25, 10, 30))
reservation2.user = mathilda
reservation2.offer = offers3
reservation2.save!

reservation2 = Reservation.new(event_adress: "12 Rue de la liberté, Nice", status: "pending", start_time:
  Time.new(2021, 12, 18, 22, 30), end_time: Time.new(2021, 12, 19, 4))
reservation2.user = mathilda
reservation2.offer = offers7
reservation2.save!
