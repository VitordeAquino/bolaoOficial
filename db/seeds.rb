# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "admin@gmail.com", nome: "admin", password: "12345678", password_confirmation: "12345678", admin: true)


Game.create(time1: "Russia", time2: "Arabia", user_id: 1, numeroDoJogo: 1)
Game.create(time1: "Egito", time2: "Uruguai", user_id: 1, numeroDoJogo: 2)
Game.create(time1: "Russia", time2: "Egito", user_id: 1, numeroDoJogo: 3)
Game.create(time1: "Arabia", time2: "Uruguai", user_id: 1, numeroDoJogo: 4)
Game.create(time1: "Uruguai", time2: "Russia", user_id: 1, numeroDoJogo: 5)
Game.create(time1: "Arabia", time2: "Egito", user_id: 1, numeroDoJogo: 6)

Game.create(time1: "Marrocos", time2: "Ira", user_id: 1, numeroDoJogo: 7)
Game.create(time1: "Portugal", time2: "Espanha", user_id: 1, numeroDoJogo: 8)
Game.create(time1: "Espanha", time2: "Ira", user_id: 1, numeroDoJogo: 9)
Game.create(time1: "Marrocos", time2: "Portugal", user_id: 1, numeroDoJogo: 10)
Game.create(time1: "Espanha", time2: "Marrocos", user_id: 1, numeroDoJogo: 11)
Game.create(time1: "Ira", time2: "Portugal", user_id: 1, numeroDoJogo: 12)

Game.create(time1: "Franca", time2: "Australia", user_id: 1, numeroDoJogo: 13)
Game.create(time1: "Peru", time2: "Dinamarca", user_id: 1, numeroDoJogo: 14)
Game.create(time1: "Franca", time2: "Peru", user_id: 1, numeroDoJogo: 15)
Game.create(time1: "Dinamarca", time2: "Australia", user_id: 1, numeroDoJogo: 16)
Game.create(time1: "Australia", time2: "Peru", user_id: 1, numeroDoJogo: 17)
Game.create(time1: "Dinamarca", time2: "Franca", user_id: 1, numeroDoJogo: 18)

Game.create(time1: "Argentina", time2: "Islandia", user_id: 1, numeroDoJogo: 19)
Game.create(time1: "Croacia", time2: "Nigeria", user_id: 1, numeroDoJogo: 20)
Game.create(time1: "Argentina", time2: "Croacia", user_id: 1, numeroDoJogo: 21)
Game.create(time1: "Nigeria", time2: "Islandia", user_id: 1, numeroDoJogo: 22)
Game.create(time1: "Islandia", time2: "Croacia", user_id: 1, numeroDoJogo: 23)
Game.create(time1: "Nigeria", time2: "Argentina", user_id: 1, numeroDoJogo: 24)

Game.create(time1: "Costa Rica", time2: "Servia", user_id: 1, numeroDoJogo: 25)
Game.create(time1: "Brasil", time2: "Suica", user_id: 1, numeroDoJogo: 26)
Game.create(time1: "Costa Rica", time2: "Brasil", user_id: 1, numeroDoJogo: 27)
Game.create(time1: "Suica", time2: "Servia", user_id: 1, numeroDoJogo: 28)
Game.create(time1: "Servia", time2: "Brasil", user_id: 1, numeroDoJogo: 29)
Game.create(time1: "Suica", time2: "Costa Rica", user_id: 1, numeroDoJogo: 30)

Game.create(time1: "Alemanha", time2: "Mexico", user_id: 1, numeroDoJogo: 31)
Game.create(time1: "Suecia", time2: "Coreia do Sul", user_id: 1, numeroDoJogo: 32)
Game.create(time1: "Alemanha", time2: "Suecia", user_id: 1, numeroDoJogo: 33)
Game.create(time1: "Coreia do Sul", time2: "Mexico", user_id: 1, numeroDoJogo: 34)
Game.create(time1: "Mexico", time2: "Suecia", user_id: 1, numeroDoJogo: 35)
Game.create(time1: "Coreia do Sul", time2: "Alemanha", user_id: 1, numeroDoJogo: 36)

Game.create(time1: "Belgica", time2: "Panama", user_id: 1, numeroDoJogo: 37)
Game.create(time1: "Tunisia", time2: "Inglaterra", user_id: 1, numeroDoJogo: 38)
Game.create(time1: "Belgica", time2: "Tunisia", user_id: 1, numeroDoJogo: 39)
Game.create(time1: "Inglaterra", time2: "Panama", user_id: 1, numeroDoJogo: 40)
Game.create(time1: "Panama", time2: "Tunisia", user_id: 1, numeroDoJogo: 41)
Game.create(time1: "Inglaterra", time2: "Belgica", user_id: 1, numeroDoJogo: 42)

Game.create(time1: "Colombia", time2: "Japao", user_id: 1, numeroDoJogo: 43)
Game.create(time1: "Polonia", time2: "Senegal", user_id: 1, numeroDoJogo: 44)
Game.create(time1: "Colombia", time2: "Polonia", user_id: 1, numeroDoJogo: 45)
Game.create(time1: "Senegal", time2: "Japao", user_id: 1, numeroDoJogo: 46)
Game.create(time1: "Japao", time2: "Polonia", user_id: 1, numeroDoJogo: 47)
Game.create(time1: "Senegal", time2: "Colombia", user_id: 1, numeroDoJogo: 48)

