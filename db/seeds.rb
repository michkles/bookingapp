# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


space1 = Space.create(name: 'Lecture room')
space2 = Space.create(name: 'Sports Hall')

booking1 = Booking.create( start_date: "2020-03-01 16:19:11", end_date: "2020-12-01 16:19:11", description: "sunny", space_id: 1)
booking2 = Booking.create( start_date: "2020-04-02 16:19:11", end_date: "2020-12-02 16:19:11", description: "rainy", space_id: 2)
booking3 = Booking.create( start_date: "2020-05-02 16:19:11", end_date: "2020-12-03 16:19:11", description: "good", space_id: 1)
booking4 = Booking.create( start_date: "2020-06-02 16:19:11", end_date: "2020-12-04 16:19:11", description: "hell", space_id: 2)
booking5 = Booking.create( start_date: "2020-07-02 16:19:11", end_date: "2020-12-05 16:19:11", description: "cheap", space_id: 1)
