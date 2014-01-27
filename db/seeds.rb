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
Game.create(time1: "Mexico", time2: "Camaroes", user_id: 1, numeroDoJogo: 2)
Game.create(time1: "Brasil", time2: "Mexico", user_id: 1, numeroDoJogo: 3)
Game.create(time1: "Croacia", time2: "Camaroes", user_id: 1, numeroDoJogo: 4)
Game.create(time1: "Camaroes", time2: "Brasil", user_id: 1, numeroDoJogo: 5)
Game.create(time1: "Croacia", time2: "Mexico", user_id: 1, numeroDoJogo: 6)