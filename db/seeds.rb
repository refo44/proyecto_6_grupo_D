# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:'Oswaldo')
User.create(name:'Rafael')
User.create(name:'Erick, el del Honda plateado, que por favor lo mueva, gracias')
User.create(name:'Edkaryd')
MeetingRoom.create(name:'Sala 1')
@laptop1 = Laptop.create(code:'laptop 1')
@laptop2 = Laptop.create(code:'laptop 2')
@laptop3 = Laptop.create(code:'laptop 3')

# Reservations
@reservation1 = Reservation.create(user_id: 1, meeting_room_id: 1, start_hour: DateTime.new(2016,11,15,1), end_hour: DateTime.new(2016,11,15,2), description: 'Reservacion 1')

@reservation2 = Reservation.create(user_id: 2, meeting_room_id: 1, start_hour: DateTime.new(2016,11,15,2), end_hour: DateTime.new(2016,11,15,3), description: 'Reservacion 2')
@reservation3 = Reservation.create(user_id: 2, meeting_room_id: 1, start_hour: DateTime.new(2016,11,16,2), end_hour: DateTime.new(2016,11,16,3), description: 'Reservacion 3')

@reservation4 = Reservation.create(user_id: 2, meeting_room_id: 1, start_hour: DateTime.new(2015,11,16,2), end_hour: DateTime.new(2016,11,16,3), description: 'Reservacion 4')

@videobeam1 = Videobeam.create(code:'videobeam 1')
@videobeam2 = Videobeam.create(code:'videobeam 2')
@videobeam3 = Videobeam.create(code:'videobeam 3')

@reservation1.laptops << @laptop1
@reservation1.laptops << @laptop2
@reservation1.videobeams << @videobeam1
@reservation2.laptops << @laptop3
@reservation2.videobeams << @videobeam3
@reservation3.videobeams << @videobeam2
