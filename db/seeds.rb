# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Le Petit Pékin',
    address:      '162 Avenue Parmentier, 75010 Paris',
    phone_number: '09 50 59 95 34',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '+44 20 7729 1888',
    category:     'italian'
  },
  {
    name:         'Guilo Guilo',
    address:      '8 Rue Garreau, 75018 Paris',
    phone_number: '09 51 47 11 66',
    category:     'japanese'
  },
  {
    name:         'Les Puces des Batignolles',
    address:      '110 Rue Legendre, 75017 Paris',
    phone_number: '01 42 26 62 26',
    category:     'french'
  },
  {
    name:         'Polpo',
    address:      '3 Cowcross St, Farringdon, London EC1M 6DR',
    phone_number: '+44 20 7250 0034',
    category:     'italian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
