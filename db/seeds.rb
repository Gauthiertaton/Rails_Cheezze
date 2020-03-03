# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "open-uri"

User.destroy_all
puts "Cleaning..User."
RacletteMachine.destroy_all

puts "Cleaning.raclette .."

puts 'Creating users...'

User.create!(first_name: "Gauthier", last_name: "Taton", email: 'gauthier_taton@yahoo.fr', password: 'cheezze')
User.create!(first_name: "Marion", last_name: "Henrio", email: 'marion.henrio@hotmail.fr', password: 'cheezze')
User.create!(first_name: "Armel", last_name: "Ahehehinnou", email: 'ahehehinnouarmel8@gmail.com', password: 'cheezze')
User.create!(first_name: "Justine", last_name: "Barbault", email: 'justinehsd@gmail.com', password: 'cheezze')
User.create!(first_name: "Jean", last_name: "Jacques", email: Faker::Internet.email, password: 'cheezze' )
User.create!(first_name: "François", last_name: "Fillon", email: Faker::Internet.email, password: 'cheezze' )
User.create!(first_name: "Jim", last_name: "Morison", email: Faker::Internet.email, password: 'cheezze' )
User.create!(first_name: "Georges", last_name: "Piton", email: Faker::Internet.email, password: 'cheezze' )
User.create!(first_name: "Romain", last_name: "Cul", email: Faker::Internet.email, password: 'cheezze' )
User.create!(first_name: "Jack", last_name: "Daniels", email: Faker::Internet.email, password: 'cheezze' )

puts 'Creating raclette machine...'
user_id = User.ids

file_1 = File.open(Rails.root.join('db/fixtures/raclettes/appareil_1.jpg'))
raclette_1 = RacletteMachine.create!(name: "Tefal RE127812 Déco Inox", price: '10€', capacity: '4', address: Faker::Address.full_address, accessories: '4 poêlons', user_id: user_id.sample)
raclette_1.photo.attach(io: file_1, filename: 'appareil_1.jpg', content_type: 'image/jpg')

file_2 = File.open(Rails.root.join('db/fixtures/raclettes/appareil_2.jpg'))
raclette_2 = RacletteMachine.create!(name: "Severin RG 9640", price: '15€', capacity: '6', address: Faker::Address.full_address, accessories: '6 poêlons', user_id: user_id.sample)
raclette_2.photo.attach(io: file_2, filename: 'appareil_2.jpg', content_type: 'image/jpg')

file_3 = File.open(Rails.root.join('db/fixtures/raclettes/appareil_3.jpg'))
raclette_3 = RacletteMachine.create!(name: "Moulinex RE160811", price: '4€', capacity: '6', address: Faker::Address.full_address, accessories: '6 poêlons', user_id: user_id.sample)
raclette_3.photo.attach(io: file_3, filename: 'appareil_3.jpg', content_type: 'image/jpg')

file_4 = File.open(Rails.root.join('db/fixtures/raclettes/appareil_4.jpg'))
raclette_4 = RacletteMachine.create!(name: "H.Koenig RP80", price: '7€', capacity: '6', address: Faker::Address.full_address, accessories: '6 poêlons', user_id: user_id.sample)
raclette_4.photo.attach(io: file_4, filename: 'appareil_4.jpg', content_type: 'image/jpg')

file_5 = File.open(Rails.root.join('db/fixtures/raclettes/appareil_5.jpg'))
raclette_5 = RacletteMachine.create!(name: "Tefal RE511412", price: '5€', capacity: '4', address: Faker::Address.full_address, accessories: '4 poêlons', user_id: user_id.sample)
raclette_5.photo.attach(io: file_5, filename: 'appareil_5.jpg', content_type: 'image/jpg')

file_6 = File.open(Rails.root.join('db/fixtures/raclettes/appareil_6.jpg'))
raclette_6 = RacletteMachine.create!(name: "Lagrange 009801 transparence", price: '16€', capacity: '8', address: Faker::Address.full_address, accessories: '8 poêlons', user_id: user_id.sample)
raclette_6.photo.attach(io: file_6, filename: 'appareil_6.jpg', content_type: 'image/jpg')

file_7 = File.open(Rails.root.join('db/fixtures/raclettes/appareil_7.jpg'))
raclette_7 = RacletteMachine.create!(name: "Tefal PR 457812 Raclette Pierrade", price: '2€', capacity: '6', address: Faker::Address.full_address, accessories: '6 poêlons', user_id: user_id.sample)
raclette_7.photo.attach(io: file_7, filename: 'appareil_7.jpg', content_type: 'image/jpg')

file_8 = File.open(Rails.root.join('db/fixtures/raclettes/appareil_8.jpg'))
raclette_8 = RacletteMachine.create!(name: "Russell Hobbs Quator 4 en 1", price: '4€', capacity: '4', address: Faker::Address.full_address, accessories: '4 poêlons', user_id: user_id.sample)
raclette_8.photo.attach(io: file_8, filename: 'appareil_8.jpg', content_type: 'image/jpg')

file_9 = File.open(Rails.root.join('db/fixtures/raclettes/appareil_9.jpg'))
raclette_9 = RacletteMachine.create!(name: "Tefal RE138012 Déco Colormania", price: '6€', capacity: '8', address: Faker::Address.full_address, accessories: '8 poêlons', user_id: user_id.sample)
raclette_9.photo.attach(io: file_9, filename: 'appareil_9.jpg', content_type: 'image/jpg')

file_10 = File.open(Rails.root.join('db/fixtures/raclettes/appareil_10.jpg'))
raclette_10 = RacletteMachine.create!(name: "Klarstein Schmelzlette", price: '9€', capacity: '6', address: Faker::Address.full_address, accessories: '6 poêlons', user_id: user_id.samplep)
raclette_10.photo.attach(io: file_10, filename: 'appareil_10.jpg', content_type: 'image/jpg')


puts 'Finished!'
