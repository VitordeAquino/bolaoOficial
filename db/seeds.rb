# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "admin@gmail.com", password: "12345678", password_confirmation: "12345678", admin: true)
Game.create(time1: "Brasil", time2: "Croacia", user_id: User.find_by_email("admin@gmail.com").id, numeroDoJogo: 1)
Game.create(time1: "Mexico", time2: "Camaroes", user_id: User.find_by_email("admin@gmail.com").id, numeroDoJogo: 2)
Game.create(time1: "Brasil", time2: "Mexico", user_id: User.find_by_email("admin@gmail.com").id, numeroDoJogo: 3)
Game.create(time1: "Croacia", time2: "Camaroes", user_id: User.find_by_email("admin@gmail.com").id, numeroDoJogo: 4)
Game.create(time1: "Camaroes", time2: "Brasil", user_id: User.find_by_email("admin@gmail.com").id, numeroDoJogo: 5)
Game.create(time1: "Croacia", time2: "Mexico", user_id: User.find_by_email("admin@gmail.com").id, numeroDoJogo: 6)