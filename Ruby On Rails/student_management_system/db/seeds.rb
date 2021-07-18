# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
course = [1, 2, 3, 4, 5, 31, 35] 

# 5.times do
#   stud = Student.create(
#     name: "#{Faker::Name.unique.name}", 
#     :age => rand(18..25),
#     email: Faker::Internet.email, 
#     contact_no: Faker::PhoneNumber.country_code,
#     enrolled_date: Faker::Date.enrolled_date,
#     :course_id => 1
#     )
# end

stud = Student.create(name: 'Rakha' , age:23 , email:"rakha@gmail.com" , contact_no:9988554433 , enrolled_date: Date.parse("17/07/2021") , course_id:rand(1..10))