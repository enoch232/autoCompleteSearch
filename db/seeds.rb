# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@posts = Post.create([
	{title: "First Post", description: "Nothing much", price: 100},
	{title: "Second Post", description: "Nothing much", price: 150},
	{title: "Third Post", description: "Nothing much", price: 200}
	])