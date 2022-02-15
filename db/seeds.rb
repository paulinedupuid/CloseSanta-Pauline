# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'
require 'open-uri'

# cleaning the database
puts "-----cleaning reservation db-----"
Reservation.destroy_all
puts "-----cleaning offer db-----"
Offer.destroy_all
puts "-----cleaning user db-----"
User.destroy_all

# Users

puts "-----user creation-----"
billmay = User.create!(firstname: "Bill", lastname: "May", email: "bill.may@yahoo.fr", password: "bm937501")
maryyoung = User.create!(firstname: "Mary", lastname: "Young", email: "mary.young@lycos.org", password: "my264053")
isobelbird = User.create!(firstname: "Isobel", lastname: "Bird", email: "isobel.bird@gmail.com", password: "ib618305")
santaclaus = User.create!(firstname: "Santa", lastname: "Claus", email: "santaclaus@google.lap", password: "sc241277")
emmamathison = User.create!(firstname: "Emma", lastname: "Mathison", email: "emma.mathison@yahoo.fr", password: "em453062")
carriebrody = User.create!(firstname: "Carrie", lastname: "Brody", email: "carrie.brody@hotmail.fr", password: "cb037482")
johnridan = User.create!(firstname: "John", lastname: "Ridan", email: "john.ridan@lycos.org", password: "jr154937")
paulbyron = User.create!(firstname: "Paul", lastname: "Byron", email: "paul.byron@gmail.com", password: "pb638274")
mathildasorich = User.create!(firstname: "Mathilda", lastname: "Sorich", email: "mathilda.sorich@hotmail.fr", password: "ms715043")
timroberts = User.create!(firstname: "Tim", lastname: "Roberts", email: "tim.roberts@hotmail.fr", password: "tr064823")


puts "-----user created-----"

# Offers

puts "-----offer creation-----"

image1 = URI.open('https://images.pexels.com/photos/716658/pexels-photo-716658.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
offers1 = Offer.new(location: "Marseille", availability: Date.new(2022, 12, 24), price_per_hour: 80,
                    offer_description: "The best santa in Marseille and around, I go throw your chimney,
                    I say HohoHo like nobody and I am adorable with the childrens",
                    title: "The best Santa of Cote d'Azur",
                    santa_description: "Natural belly, beautifull beard, quality costume and I come with
                    my own reindeer")
offers1.user = billmay
offers1.photo.attach(io: image1, filename: 'offer1', content_type: 'image/jpg')
offers1.save!

image2 = URI.open('https://images.pexels.com/photos/2752099/pexels-photo-2752099.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
offers2 = Offer.new(location: "Cannes", availability: Date.new(2022, 12, 20), price_per_hour: 60,
                    offer_description: "If you need a good santa in Cannes, don't look further, I graduated from
                    the Santa school, clean, kind, and I have a great show prepared for you",
                    title: "Santa in Cannes",
                    santa_description: "Gratuated from santa school, 6 years of experience, I am the right choice for your entertainement!")
offers2.user = maryyoung
offers2.photo.attach(io: image2, filename: 'offer2', content_type: 'image/jpg')
offers2.save!

image3 = URI.open('https://images.pexels.com/photos/298824/pexels-photo-298824.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
offers3 = Offer.new(location: "Cannes", availability: Date.new(2022, 12, 25), price_per_hour: 90,
                    offer_description: "I can come for your christmas day to give gifts to your children and make their
                    christmas a real and magical experience.",
                    title: "Santa for christmas",
                    santa_description: "Several years of experience as a Santa.")
offers3.user = isobelbird
offers3.photo.attach(io: image3, filename: 'offer3', content_type: 'image/jpg')
offers3.save!

image4 = URI.open('https://images.pexels.com/photos/1654961/pexels-photo-1654961.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
offers4 = Offer.new(location: "Marseille", availability: Date.new(2022, 12, 16), price_per_hour: 60,
                    offer_description: "You are looking for a Santa for your christmas? I'm the older Santa of Marseille,
                    30 years of experience, I can take make your familly Christmas dreams come true!",
                    title: "Massilia Santa",
                    santa_description: "Santa of Massilia, the best in the city, I can bring the magic of
                    Christmas time to your family.")
offers4.user = emmamathison
offers4.photo.attach(io: image4, filename: 'offer4', content_type: 'image/jpg')
offers4.save!


image5 = URI.open('https://images.pexels.com/photos/1556679/pexels-photo-1556679.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
offers5 = Offer.new(location: "Cannes", availability: Date.new(2022, 12, 23), price_per_hour: 90,
                    offer_description: "Christmas is on its way, bring a magical gift to your children with this unique
                    experience.",
                    title: "The best Santa for your holidays",
                    santa_description: "Make all your children dreams come true for Christmas!")
offers5.user = carriebrody
offers5.photo.attach(io: image5, filename: 'offer5', content_type: 'image/jpg')
offers5.save!

image6 = URI.open('https://images.pexels.com/photos/3149902/pexels-photo-3149902.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
offers6 = Offer.new(location: "Nice", availability: Date.new(2022, 12, 31), price_per_hour: 80,
                    offer_description: "What is best than a Santa for your Christmas ? Santa Claus for
                    new year's eve! Bring some christmas magic after christmas and enjoy your holidays!",
                    title: "Santa for your New Year's eve!",
                    santa_description: "30 years fo experience, gratuated of the Santa school, professionnal,
                    I guarantee you the best prestation.")
offers6.user = johnridan
offers6.photo.attach(io: image6, filename: 'offer6', content_type: 'image/jpg')
offers6.save!

image7 = URI.open('https://images.pexels.com/photos/133640/pexels-photo-133640.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
offers7 = Offer.new(location: "Nice", availability: Date.new(2022, 12, 18), price_per_hour: 70,
                    offer_description: "On your holiday, choose the perfect Santa Claus to enjoy christmas time",
                    title: "Nice Santa",
                    santa_description: "A hot chocolate and a hot santa, the best Christmas combination.")
offers7.user = paulbyron
offers7.photo.attach(io: image7, filename: 'offer7', content_type: 'image/jpg')
offers7.save!

image8 = URI.open('https://images.pexels.com/photos/247891/pexels-photo-247891.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
offers8 = Offer.new(location: "France", availability: Date.new(2021, 12, 21), price_per_hour: 0,
                    offer_description: "Ho HO Ho it's almost christmas, don't forget to be a good child and make write
                    wishlist.",
                    title: "The real Santa",
                    santa_description: "Since the dawn of time, I bring joy to all the children in the world.")
offers8.user = santaclaus
offers8.photo.attach(io: image8, filename: 'offer8', content_type: 'image/jpg')
offers8.save!

puts "-----offer created-----"

# Reservation

puts "-----reservation creation-----"

reservation1 = Reservation.new(event_adress: "27 avenue Thiers, Nice", status: "pending", reservation_start:
                              Time.new(2022, 12, 23, 8, 24, 45), reservation_end: Time.new(2022, 12, 23, 10, 24, 45))
reservation1.user = mathildasorich
reservation1.offer = offers1
reservation1.save!

reservation2 = Reservation.new(event_adress: "30 Rue Henri Paschke, Cannes", status: "pending", reservation_start:
  Time.new(2022, 12, 25, 9, 30), reservation_end: Time.new(2022, 12, 25, 10, 30))
reservation2.user = timroberts
reservation2.offer = offers3
reservation2.save!

reservation2 = Reservation.new(event_adress: "12 Rue de la liberté, Nice", status: "pending", reservation_start:
  Time.new(2022, 12, 22, 22, 30), reservation_end: Time.new(2022, 12, 22, 23, 45))
reservation2.user = mathildasorich
reservation2.offer = offers7
reservation2.save!

puts "-----reservation created-----"
