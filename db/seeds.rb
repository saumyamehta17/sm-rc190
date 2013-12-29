# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    Product.destroy_all
    Product.create(name: 'Alden Lap Desk/Bed Tray with Drawer, Walnut')
    Product.create(name: 'South Shore Popular Desk With Hutch, Maple (Component)')
    Product.create(name: 'Mainstays Student Desk, Black')
