# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# first_user = User.create!(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
# second_user = User.create!(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
# first_post = Post.create!(author: first_user, title: 'Hello', text: 'This is my first post')
# second_post = Post.create!(author: first_user, title: '2 Post', text: 'This is my second pos .')
# third_post = Post.create!(author: second_user, title: '3 Post', text: 'This is my third post.')
# fourth_post = Post.create!(author: second_user, title: '4 Post', text: 'This is my fourth post .')
# Comment.create!(post: first_post, author: second_user, text: 'Hi Tom!')
# Comment.create!(post: first_post, author: second_user, text: 'Hi Tom! nice post')
# Comment.create!(post: first_post, author: first_user, text: 'Hi Lilly! This is awesome')
# Comment.create!(post: second_post, author: first_user, text: 'Hi Lilly! I can\'t see the share button')
# Comment.create!(post: second_post, author: second_user, text: 'Hi Tom! when are you publishing the next one')
# Comment.create!(post: third_post, author: first_user, text: 'Hi Lilly! this is so inspiring')
# Comment.create!(post: third_post, author: second_user, text: 'Hi Tom! I like this')
# Comment.create!(post: fourth_post, author: first_user, text: 'Hi Lilly! Amazing work')
# Comment.create!(post: fourth_post, author: second_user, text: 'Hi Tom! I need more of such writings')
# Like.create!(author: first_user, post: first_post)
# Like.create!(author: first_user, post: second_post)