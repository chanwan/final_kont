# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Author's seed

ivan_petrov = Author.create!( name: 'Ivan', sur_name: 'Petrov')
alex_peshkov = Author.create!( name: 'Alex', sur_name: 'Peshkov')

# User's  seed 

user_1 = User.create!( email: 'user_1@m.r', password: 'qweqwe', password_confirmation: 'qweqwe' )
user_2 = User.create!( email: 'user_2@m.r', password: 'qweqwe', password_confirmation: 'qweqwe' )

# Category seed

drama = Category.create!(title: 'drama')
horror = Category.create!(title: 'horror')
advanture = Category.create!(title: 'advanture')

# Image's seed

# image = Image.create!( picture: '/images/index.jpeg')

# book's seed

book_1 = Book.create!( title: 'Goliaf and lion', author_id: ivan_petrov.id, category_id: drama.id, 
		desc: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
			   Quasi deserunt odio dolorem iste vitae laborum quod perferendis 
			   quisquam tempore amet, aperiam odit itaque sapiente, asperiores nobis! Aperiam laudantium, 
			   eveniet voluptatibus?', image_id: nil, user_id: user_2.id)

# book_2 = Book.create!( title: 'Harry Poter', author_id: alex_peshkov.id, category_id: horror.id, 
# 		desc: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
# 			   Quasi deserunt odio dolorem iste vitae laborum quod perferendis 
# 			   quisquam tempore amet, aperiam odit itaque sapiente, asperiores nobis! Aperiam laudantium, 
# 			   eveniet voluptatibus?', image_id: image.id, user_id: user_2.id)

# book_3 = Book.create!( title: 'Evalute your mind', author_id: ivan_petrov.id, category_id: advanture.id, 
# 		desc: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
# 			   Quasi deserunt odio dolorem iste vitae laborum quod perferendis 
# 			   quisquam tempore amet, aperiam odit itaque sapiente, asperiores nobis! Aperiam laudantium, 
# 			   eveniet voluptatibus?', image_id: image.id, user_id: user_1.id)


