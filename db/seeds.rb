# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Employee.destroy_all

Employee.create!([{
                    firstName: "Saul",
                    lastName: "Goodman",
                    phoneNumber: "(605)321-4567"
                  },
                  {
                    firstName: "Jesse",
                    lastName: "Pinkman",
                    phoneNumber: "(305)999-8989"
                  },
                  {
                    firstName: "Walter",
                    lastName: "White",
                    phoneNumber: "(123)123-4567"
                  }])

p "Created #{Employee.count} employees"