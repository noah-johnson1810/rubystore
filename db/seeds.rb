# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Employee.destroy_all
@employee1 = Employee.create(firstName: "Saul",
                             lastName: "Goodman",
                             phoneNumber: "(605)321-4567")
@employee2 = Employee.create(firstName: "Jesse",
                             lastName: "Pinkman",
                             phoneNumber: "(305)999-8989")
@employee3 = Employee.create(firstName: "Walter",
                             lastName: "White",
                             phoneNumber: "(123)123-4567")
p "Created #{Employee.count} employees"

Customer.destroy_all
@customer1 = Customer.create(firstName: "Marco",
                             lastName: "Salamanca")
@customer2 = Customer.create(firstName: "Skinny",
                             lastName: "Pete")
p "Created #{Customer.count} customers"

Order.destroy_all
@order1 = Order.create(employee_id: @employee1.id,
                       customer_id: @customer2.id)
@order2 = Order.create(employee_id: @employee1.id,
                       customer_id: @customer1.id)
@order3 = Order.create(employee_id: @employee3.id,
                       customer_id: @customer2.id)
p "Created #{Order.count} orders"

Product.destroy_all

@products = [{
               name: "Tweezers",
               description: "Pinchy things to pick up other things.",
               quantity: 24,
               order_id: @order1.id
             },
             {
               name: "Flask",
               description: "Glass tube object used for mixing and measuring.",
               quantity: 2,
               order_id: @order3.id
             },
             {
               name: "Straws",
               description: "Paper or Plastic?",
               quantity: 50,
               order_id: @order1.id
             },
             {
               name: "Paper Towels",
               description: "Cleaning up or preparing to clean up.",
               quantity: 5,
               order_id: @order2.id
             }]
Product.create!(@products)

p "Created #{Product.count} products"