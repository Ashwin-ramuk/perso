# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "-----initiate seeding"

u = User.create(name: 'ashwin', email: 'ash@ren.com')
uu = User.create(name: 'kumaravel', email: 'kum@ren.com', admin_id: u.id)
c = u.companies.create(name : 'parris')
uu.companies.create(name : 'kila')
c.products.create(name: 'pen', quantity: 1, description: "euri")

puts "-----done seeding"