# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(first_name: "Bob", last_name: "Green", age: 50, email: "bobgreen@example.com", address: "123 Streetname, State", phone: "123-456-6788")

user = User.create(first_name: "Jane", last_name: "Doe", age: 16, email: "janedoe@example.com", address: "345 Streetname, State", phone: "345-343-5432")

user = User.create(first_name: "Angie", last_name: "Grey", age: 30, email: "angiegrey@example.com", address: "669 Streetname, State", phone: "345-678-2121")

user = User.create(first_name: "Fred", last_name: "Don", age: 45, email: "freddon@example.com", address: "978 Streetname, State", phone: "890-345-6765")

user = User.create(first_name: "Aline", last_name: "Don", age: 26, email: "alinadon@example.com", address: "567 Streetname, State", phone: "890-345-2334")
