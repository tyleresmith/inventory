# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  # MySQL
  # ActiveRecord::Base.connection.execute("TRUNCATE #{table}") unless table == "schema_migrations"

  # SQLite
  ActiveRecord::Base.connection.execute("DELETE FROM #{table}") unless table == "schema_migrations"
  

end

user = User.create! :username => 'John Doe', :email => 'john@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
Category.create!([
  {name: 'Pantry', user_id: user.id}, # id 1
  {name: 'Fridge', user_id: user.id}, 
  {name: 'Books', user_id: user.id}, # id 3
  {name: 'Clothing', user_id: user.id}, 
  {name: 'Hobby', user_id: user.id}, # id 5
  {name: 'Work', user_id: user.id},  
  {name: 'Transportation', user_id: user.id}, # id 6
  {name: 'Misc.', user_id: user.id} # id 7
])

categories = Category.pluck(:id)

200.times do |n|
  Item.create!(name: Faker::Commerce.product_name, quantity: Faker::Number.between(1,10), category_id: categories.sample, description: Faker::Lorem.paragraph(2))
end