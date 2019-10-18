# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.delete_all
# Book.delete_all
# Review.delete_all
# Users

8.times {User.create(username: Faker::GreekPhilosophers.unique.name.downcase.capitalize.delete(" "))}

# Authors

13.times {Author.create(first_name: Faker::Name.first_name.downcase.capitalize, last_name: Faker::Name.last_name.downcase.capitalize)}

# Books

13.times {Book.create(title: Faker::Book.unique.title.downcase.capitalize, synopsis: Faker::Hipster.sentence, author_id: Author.all.sample.id)}


# Reviews

20.times {Review.create(user_id: User.all.sample.id, book_id: Book.all.sample.id, content: Faker::GreekPhilosophers.unique.quote)}


puts "SEEDED"