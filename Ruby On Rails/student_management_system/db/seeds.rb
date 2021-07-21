# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


2.times do
    Student.create(
    name: "#{Faker::Name.unique.name}", 
    :age => rand(18..25),
    email: Faker::Internet.email, 
    contact_no: Faker::PhoneNumber.country_code,
    enrolled_date: Faker::Date.backward,
    :course_id => Course.ids.sample
    )
end

