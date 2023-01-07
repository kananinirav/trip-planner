# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

# trip 1
trip = Trip.create( title: 'Osaka Trips', note: 'We are planning to go to Osaka for 5 days. Add places we can visit during the trip.', start_date: DateTime.now, end_date: DateTime.now + 5)

# routes
trip.routes.create(place_name: 'Osaka Castle', start_date: DateTime.now, end_date: DateTime.now)

trip.routes.create(place_name: 'Universal Studios Japan', start_date: DateTime.now + 1, end_date: DateTime.now  + 1)

trip.routes.create(place_name: 'Osaka Aquarium Kaiyukan', start_date: DateTime.now + 2, end_date: DateTime.now  + 2)

trip.routes.create(place_name: 'Dotonbori', start_date: DateTime.now + 3, end_date: DateTime.now  + 3)

trip.routes.create(place_name: 'Umeda Sky Building', start_date: DateTime.now + 4, end_date: DateTime.now  + 4)

# expense_trackers
trip.expense_trackers.create(description: 'Osaka Castle', date: DateTime.now, amount: rand(1000..10000))

trip.expense_trackers.create(description: 'Universal Studios Japan', date: DateTime.now + 1, amount: rand(1000..10000))

trip.expense_trackers.create(description: 'Osaka Aquarium Kaiyukan', date: DateTime.now + 2, amount: rand(1000..10000))

trip.expense_trackers.create(description: 'Dotonbori', date: DateTime.now + 3, amount: rand(1000..10000))

trip.expense_trackers.create(description: 'Dotonbori', date: DateTime.now + 3, amount: rand(1000..10000))

trip.expense_trackers.create(description: 'Umeda Sky Building', date: DateTime.now + 4, amount: rand(1000..40000))

# trip 2
trip = Trip.create( title: 'Odaiba Trips', note: 'We are planning to go to Odaiba for 2 days. Add places we can visit during the trip.', start_date: DateTime.now, end_date: DateTime.now + 2)

# routes
trip.routes.create(place_name: 'teamLab Borderless', start_date: DateTime.now, end_date: DateTime.now)

trip.routes.create(place_name: 'Odaiba Scenery by Sea Bus', start_date: DateTime.now + 1, end_date: DateTime.now  + 1)

trip.routes.create(place_name: 'Tokyo Trick Art Museum', start_date: DateTime.now + 1, end_date: DateTime.now  + 1)

# expense_trackers
trip.expense_trackers.create(description: 'teamLab Borderless', date: DateTime.now, amount: rand(4000..10000))

trip.expense_trackers.create(description: 'Odaiba Scenery by Sea Bus', date: DateTime.now + 1, amount: rand(1000..10000))

trip.expense_trackers.create(description: 'Odaiba Scenery by Sea Bus', date: DateTime.now + 1, amount: rand(3000..10000))

trip.expense_trackers.create(description: 'Tokyo Trick Art Museum', date: DateTime.now + 1, amount: rand(3000..10000))

# trip 3
trip = Trip.create( title: 'Akihabara Trips', note: 'We are planning to go to Akihabara for 1 days. Add places we can visit during the trip.', start_date: DateTime.now, end_date: DateTime.now + 5)

# routes
trip.routes.create(place_name: 'Anime shops', start_date: DateTime.now, end_date: DateTime.now)

trip.routes.create(place_name: 'Kanda Myojin Shrine', start_date: DateTime.now, end_date: DateTime.now)

trip.routes.create(place_name: 'Yodobashi Camera', start_date: DateTime.now, end_date: DateTime.now)

# expense_trackers
trip.expense_trackers.create(description: 'Anime shops', date: DateTime.now, amount: rand(4000..10000))

trip.expense_trackers.create(description: 'Kanda Myojin Shrine', date: DateTime.now + 1, amount: rand(1000..3000))

trip.expense_trackers.create(description: 'Yodobashi Camera', date: DateTime.now + 1, amount: rand(3000..10000))