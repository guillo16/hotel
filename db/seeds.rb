# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 puts 'destroy database'
 Car.destroy_all
 puts 'creating cars'
 Car.create!(name: "Ferrari rs", description: "the best car you can ride in your life the best election", photo1: "https://images.unsplash.com/photo-1527247043589-98e6ac08f56c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60", user_id: 4)
 Car.create!(name: "Ferrari ss", description: "the best car you can ride in your life the best election", photo1: "https://images.unsplash.com/photo-1503736334956-4c8f8e92946d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60", user_id: 4)

 puts 'finish'
