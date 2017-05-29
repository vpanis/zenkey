puts 'Cleaning DB...'
User.destroy_all
Flat.destroy_all
Availability.destroy_all
Slot.destroy_all
Booking.destroy_all

puts 'Creating Users...'

charles             = User.create(email: "charles@gmail.com", password: '123456', username: "Official")
nikolai             = User.create(email: "nikolai@gmail.com", password: '123456', username: "Pokora")
vincent             = User.create(email: "vincent@gmail.com", password: '123456', username: "Achilou")
alban               = User.create(email: "alban@gmail.com", password: '123456', username: "Alban")

puts 'Creating Flats...'

oberkampf           = Flat.create(title: "Angers neighborhood", address: "14 Rue Garnier, 49100 Angers", price: 40, starting_day: Date.new(2017, 6, 10), length: 5, description: "It's time to become wild and discover the real life in Angers district. Set in the heart of the region Pays de la Loire, and very Europe-minded, France’s 17th city enjoys a good reputation as a desirable place to live. According to the Express magazine, Angers even offers the highest quality of life to its residents compared to other big french cities.", is_outside: false, is_dirty: true, is_food: true, user_id: mathieu.id)

puts 'Creating Availabilities...'

a_1  = Availability.create(flat_id: menilmontant, starts_at: DateTime.new(2017, 6, 12, 8, 0, 0, 0), length: 1, slot_length: 15)

puts 'Creating Slots...'

s_1  = Slot.create(availability_id: a_1, tenant_id: alban, starts_at: DateTime.new(2017, 6, 12, 8, 0, 0, 0), status: "booked")
s_2  = Slot.create(availability_id: a_1, tenant_id: vincent, starts_at: DateTime.new(2017, 6, 12, 8, 15, 0, 0), status: "booked")
s_3  = Slot.create(availability_id: a_1, starts_at: DateTime.new(2017, 6, 12, 8, 30, 0, 0), status: "vaccant")
s_4  = Slot.create(availability_id: a_1, tenant_id: nikolai, starts_at: DateTime.new(2017, 6, 12, 8, 45, 0, 0), status: "cancelled")

puts 'Creating Bookings...'

b_1  = Booking.create(flat_id: oberkampf, starting_day: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant_id: alban)

puts 'Finished !'
