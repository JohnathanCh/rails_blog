# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


user1 = User.create(name: Faker::TvShows::GameOfThrones.character)
user2 = User.create(name: Faker::TvShows::GameOfThrones.character)
user3 = User.create(name: Faker::TvShows::GameOfThrones.character)



post1 = Post.create(title: "title1", content: Faker::Hipster.paragraph)  
post2 = Post.create(title: "title2", content: Faker::Hipster.paragraph)  
post3 = Post.create(title: "title3", content: Faker::Hipster.paragraph)  
post4 = Post.create(title: "title4", content: Faker::Hipster.paragraph)  
post5 = Post.create(title: "title5", content: Faker::Hipster.paragraph)  
post6 = Post.create(title: "title6", content: Faker::Hipster.paragraph)  

user1.posts << post1
user2.posts << post2
user3.posts << post3
user1.posts << post4
user1.posts << post5
user3.posts << post6

