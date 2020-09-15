# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Message.create(body:"hey all, this is vivek",user: User.first)
Message.create(body:"hey all, this is sarthak",user: User.find(2))
Message.create(body:"hey all, this is anagh",user: User.find(3))
Message.create(body:"hey all, this is suraj",user: User.find(4))
Message.create(body:"hey all, this is sumeet",user: User.find(5))
Message.create(body:"hey all, this is yog",user: User.find(6))
