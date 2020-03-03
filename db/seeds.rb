# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# User.destroy_all
puts "Cleaning..User."
RacletteMachine.destroy_all

puts "Cleaning.raclette .."

puts 'Creating users...'
# User.create!(first_name: "Gauthier", last_name: "Taton", email: 'gauthier_taton@yahoo.fr', password: 'cheezze')
# User.create!(first_name: "Marion", last_name: "Henrio", email: 'marion.henrio@hotmail.fr', password: 'cheezze')
# User.create!(first_name: "Armel", last_name: "Ahehehinnou", email: 'ahehehinnouarmel8@gmail.com', password: 'cheezze')
# User.create!(first_name: "Justine", last_name: "Barbault", email: 'justinehsd@gmail.com', password: 'cheezze')
# User.create!(first_name: "Jean", last_name: "Jacques", email: Faker::Internet.email, password: 'cheezze' )
# User.create!(first_name: "François", last_name: "Fillon", email: Faker::Internet.email, password: 'cheezze' )
# User.create!(first_name: "Jim", last_name: "Morison", email: Faker::Internet.email, password: 'cheezze' )
# User.create!(first_name: "Georges", last_name: "Piton", email: Faker::Internet.email, password: 'cheezze' )
# User.create!(first_name: "Romain", last_name: "Cul", email: Faker::Internet.email, password: 'cheezze' )
# User.create!(first_name: "Jack", last_name: "Daniels", email: Faker::Internet.email, password: 'cheezze' )

puts 'Creating raclette machine...'
RacletteMachine.create!(name: "Tefal RE127812 Déco Inox", price: '10€', capacity: '4', address: Faker::Address.full_address, accessories: '4 poêlons', user_id: 31 )
RacletteMachine.create!(name: "Severin RG 9640", price: '15€', capacity: '6', address: Faker::Address.full_address, accessories: '6 poêlons', user_id: 32 )
RacletteMachine.create!(name: "Moulinex RE160811", price: '4€', capacity: '6', address: Faker::Address.full_address, accessories: '6 poêlons', user_id: 33 )
RacletteMachine.create!(name: "H.Koenig RP80", price: '7€', capacity: '6', address: Faker::Address.full_address, accessories: '6 poêlons', user_id: 34 )
RacletteMachine.create!(name: "Tefal RE511412", price: '5€', capacity: '4', address: Faker::Address.full_address, accessories: '4 poêlons', user_id: 35 )
RacletteMachine.create!(name: "Lagrange 009801 transparence", price: '16€', capacity: '8', address: Faker::Address.full_address, accessories: '8 poêlons', user_id: 36 )
RacletteMachine.create!(name: "Tefal PR 457812 Raclette Pierrade", price: '2€', capacity: '6', address: Faker::Address.full_address, accessories: '6 poêlons', user_id: 37 )
RacletteMachine.create!(name: "Russell Hobbs Quator 4 en 1", price: '4€', capacity: '4', address: Faker::Address.full_address, accessories: '4 poêlons', user_id: 38 )
RacletteMachine.create!(name: "Tefal RE138012 Déco Colormania", price: '6€', capacity: '8', address: Faker::Address.full_address, accessories: '8 poêlons', user_id: 39 )
RacletteMachine.create!(name: "Klarstein Schmelzlette", price: '9€', capacity: '6', address: Faker::Address.full_address, accessories: '6 poêlons', user_id: 40 )

puts 'Finished!'
