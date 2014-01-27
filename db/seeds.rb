# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "vitordeaquino@gmail.com", password: "12345678", password_confirmation: "12345678")
User.create(email: "alissondeaquino@gmail.com", password: "12345678", password_confirmation: "12345678")

Game.create(time1: "Brasil", time2: "Croacia", user_id: 1, numeroDoJogo: 1)