# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Profile.destroy_all
User.destroy_all

# users
admin1 = User.create!(email: "admin1@test.com", password: "234567", admin: true)
admin2 = User.create!(email: "admin2@test.com", password: "2345678", admin: true)

student1 = User.create!(email: "student1@test.com", password: "345678")
student2 = User.create!(email: "student2@test.com", password: "3456789")
student3 = User.create!(email: "student3@test.com", password: "34567890")
student4 = User.create!(email: "student4@test.com", password: "123456")
student5 = User.create!(email: "student5@test.com", password: "1234567")
student6 = User.create!(email: "student6@test.com", password: "12345678")


# # profiles
# profile1 = Profile.create!(first_name: "Tom", last_name: "C", user: admin1)
# profile2 = Profile.create!(first_name: "John", last_name: "H", user: admin2)
#
# profile3 = Profile.create!(first_name: "Mary", last_name: "S", user: student1)
# profile4 = Profile.create!(first_name: "Benny", last_name: "A",  user: student2)
# profile5 = Profile.create!(first_name: "Dan", last_name: "G", user: student3)
# profile6 = Profile.create!(first_name: "Quinten", last_name: "K", user: student4)
# profile7 = Profile.create!(first_name: "Anna", last_name: "J", user: student5)
# profile8 = Profile.create!(first_name: "Yvonne", last_name: "I", user: student6)
