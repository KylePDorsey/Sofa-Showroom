# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.connection
User.create(first_name: "Kyle", last_name: "Dorsey", email: "k@gmail.com", password: "1234")

Customer.connection
Customer.create(user_id: 1, first_name: "Jim", last_name: "Bob")

# Sofa.connection
# Sofa.create(style_family: "walters", configuration: "left chaise", fabric_type: "ash", fabric_style: "coarse", leg_style: "chrome", customer_id: 1)