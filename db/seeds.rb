# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Profile.destroy_all
User.destroy_all

# profiles
profile1 = Profile.create!(first_name: "Tom", last_name: "C")
profile2 = Profile.create!(first_name: "John", last_name: "H")

profile3 = Profile.create!(first_name: "Mary", last_name: "S")
profile4 = Profile.create!(first_name: "Benny", last_name: "A")
profile5 = Profile.create!(first_name: "Dan", last_name: "G")
profile6 = Profile.create!(first_name: "Quinten", last_name: "K")
profile7 = Profile.create!(first_name: "Anna", last_name: "J")
profile8 = Profile.create!(first_name: "Yvonne", last_name: "I")

# users
admin1 = User.create!(email: "admin1@test.com", password: "234567", admin: true, profile: profile1)
admin2 = User.create!(email: "admin2@test.com", password: "2345678", admin: true, profile: profile2)

student1 = User.create!(email: "student1@test.com", password: "345678", profile: profile3)
student2 = User.create!(email: "student2@test.com", password: "3456789", profile: profile4)
student3 = User.create!(email: "student3@test.com", password: "34567890", profile: profile5)
student4 = User.create!(email: "student4@test.com", password: "123456", profile: profile6)
student5 = User.create!(email: "student5@test.com", password: "1234567", profile: profile7)
student6 = User.create!(email: "student6@test.com", password: "12345678", profile: profile8)
