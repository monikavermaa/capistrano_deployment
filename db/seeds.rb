# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.destroy_all
Employee.destroy_all

company = Company.create(name: "Taskcraft LLP")

employee = Employee.create(name: "Monika Verma", email: "monikarordeveloper@gmail.com", company_id: company.id)

employee = Employee.create(name: "Ram", email: "ram@gmail.com", company_id: company.id)

puts "comapny and it's employees created successfully..!!"