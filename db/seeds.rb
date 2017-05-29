puts 'Cleaning DB...'
User.destroy_all
Flat.destroy_all
Availability.destroy_all
Slot.destroy_all
Booking.destroy_all

puts 'Creating Users...'

charles             = User.create(email: "charles@gmail.com", password: '123456')
nikolai             = User.create(email: "nikolai@gmail.com", password: '123456')
vincent             = User.create(email: "vincent@gmail.com", password: '123456')
alban               = User.create(email: "alban@gmail.com", password: '123456')

puts 'Creating Flats...'

oberkampf           = Flat.create(title: "Studio 20m2 rue oberkampf", description: "Studio 20m2 meublé kitchinette", rental_type: "location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "50 Rue Oberkampf, 75020 PARIS", is_address_public: true, subway: "Parmentier", furnished: true, size: 20, rent: 800, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, desposit: 800, landlord_id: charles)

puts 'Creating Availabilities...'

a_1  = Availability.create(flat_id: oberkampf, starts_at: DateTime.new(2017, 6, 12, 8, 0, 0, 0), length: 1, slot_length: 15)

puts 'Creating Slots...'

s_1  = Slot.create(availability_id: a_1, tenant_id: alban, starts_at: DateTime.new(2017, 6, 12, 8, 0, 0, 0), status: "booked")
s_2  = Slot.create(availability_id: a_1, tenant_id: vincent, starts_at: DateTime.new(2017, 6, 12, 8, 15, 0, 0), status: "booked")
s_3  = Slot.create(availability_id: a_1, starts_at: DateTime.new(2017, 6, 12, 8, 30, 0, 0), status: "vaccant")
s_4  = Slot.create(availability_id: a_1, tenant_id: nikolai, starts_at: DateTime.new(2017, 6, 12, 8, 45, 0, 0), status: "cancelled")

puts 'Creating Bookings...'

b_1  = Booking.create(flat_id: oberkampf, starting_day: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant_id: alban)

puts 'Finished !'
