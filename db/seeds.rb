# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
  {name: 'Pantry', user_id: 3}, 
  {name: 'Fridge', user_id: 3}, 
  {name: 'Books', user_id: 3}, 
  {name: 'Clothing', user_id: 3}, 
  {name: 'Hobby', user_id: 3}, 
  {name: 'Work', user_id: 3}, 
  {name: 'Transportation', user_id: 3}, 
  {name: 'Misc.', user_id: 3}
])
