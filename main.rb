require_relative 'trip'
require_relative 'location'


trip1 = Trip.new("First Trip!")
china = Location.new("China")

trip1.add_destination("Iment Nome")
trip1.add_destination("Hanamura")
trip1.add_destination("Summoner's Rift")
trip1.add_destination("Gotham")
trip1.add_destination("Volskaya")
trip1.add_destination("Atlantis")
trip1.add_destination("Fire Nation")
trip1.add_destination("Pandora")

puts trip1.places.inspect

trip1.begin_trip
