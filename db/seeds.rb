puts 'Cleaning DB...'
User.destroy_all
Flat.destroy_all
Availability.destroy_all
Slot.destroy_all
Booking.destroy_all

puts 'Creating Users...'

charles             = User.create!(email: "charles@gmail.com", password: '123456', admin: true, status: "Cadre supérieur", grade: 5)
url_charles         = 'https://avatars2.githubusercontent.com/u/5082751?v=3'
charles.photo_url   = url_charles
nikolai             = User.create!(email: "nikolai@gmail.com", password: '123456', admin: true, status: "Ouvrier", grade: 3)
url_nikolai         = 'https://avatars2.githubusercontent.com/u/22763571?v=3'
nikolai.photo_url   = url_nikolai
vincent             = User.create!(email: "vincent@gmail.com", password: '123456', admin: true, status: "Agriculteur", grade: 4)
url_vincent         = 'https://avatars0.githubusercontent.com/u/25386031?v=3'
vincent.photo_url   = url_vincent
alban               = User.create!(email: "alban@gmail.com", password: '123456', admin: true, status: "Profession libérale", grade: 2)
url_alban           = 'https://avatars1.githubusercontent.com/u/25384564?v=3'
alban.photo_url     = url_alban

puts 'Creating Flats...'

oberkampf           = Flat.create!(title: "Studio 20m2 rue oberkampf", description: "Studio 20m2 meublé kitchinette", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "50 Rue Oberkampf, 75020 PARIS", is_address_public: true, subway: "Parmentier", furnished: true, size: 20, rent: 800, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: charles)

urls_oberkampf      = [
  'https://unsplash.it/200/300',
  'https://unsplash.it/200/300',
  'https://unsplash.it/200/300',
  'https://unsplash.it/200/300'
]
oberkampf.photo_urls = urls_oberkampf



puts 'Creating Availabilities...'

a_1  = Availability.create!(flat: oberkampf, starts_at: DateTime.new(2017, 6, 12, 8, 0, 0, 0), length: 1, slot_length: 15)

puts 'Creating Slots...'

s_1  = Slot.create!(availability: a_1, tenant: alban, starts_at: DateTime.new(2017, 6, 12, 8, 0, 0, 0), status: "Booked")
s_2  = Slot.create!(availability: a_1, tenant: vincent, starts_at: DateTime.new(2017, 6, 12, 8, 15, 0, 0), status: "Booked")
s_3  = Slot.create!(availability: a_1, starts_at: DateTime.new(2017, 6, 12, 8, 30, 0, 0), status: "Vacant")
s_4  = Slot.create!(availability: a_1, tenant: nikolai, starts_at: DateTime.new(2017, 6, 12, 8, 45, 0, 0), status: "Cancelled")

puts 'Creating Bookings...'

b_1  = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: alban)

puts 'Creating Searches...'

s_1  = Search.create!(address: "50 Rue Oberkampf, 75020 PARIS", tenant: alban)

puts 'Finished !'
