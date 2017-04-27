# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

january = Month.create({name: 'January', month_length: 31})
february = Month.create({name: 'February', month_length: 28})
march = Month.create({name: 'March', month_length: 31})
april = Month.create({name: 'April', month_length: 30})
may = Month.create({name: 'May', month_length: 31})
june = Month.create({name: 'June', month_length: 30})
july = Month.create({name: 'July', month_length: 31})
august = Month.create({name: 'August', month_length: 31})
september = Month.create({name: 'September', month_length: 30})
october = Month.create({name: 'October', month_length: 31})
november = Month.create({name: 'November', month_length: 30})
december = Month.create({name: 'December', month_length: 31})
