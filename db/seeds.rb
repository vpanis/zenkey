puts 'Cleaning DB...'
User.destroy_all
Flat.destroy_all
Slot.destroy_all
Booking.destroy_all

puts 'Creating Users...'

charles             = User.create!(first_name: "Charles", last_name: "Bénard", email: "charles@gmail.com", password: '123456', admin: true, status: "Cadre supérieur", income: 2000, has_warrantor: true, warrantor_income: 5000)
url_charles         = 'https://avatars2.githubusercontent.com/u/5082751?v=3'
charles.photo_url   = url_charles
nikolay             = User.create!(first_name: "Nikolay", last_name: "Martynov", email: "nikolai@gmail.com", password: '123456', admin: true, status: "Etudiant", income: 0, has_warrantor: true, warrantor_income: 4500)
url_nikolay         = 'https://avatars2.githubusercontent.com/u/22763571?v=3'
nikolay.photo_url   = url_nikolay
vincent             = User.create!(first_name: "Vincent", last_name: "Panis", email: "vincent@gmail.com", password: '123456', admin: true, status: "Agriculteur", income: 1500, has_warrantor: false, warrantor_income: 0)
url_vincent         = 'https://avatars0.githubusercontent.com/u/25386031?v=3'
vincent.photo_url   = url_vincent
alban               = User.create!(first_name: "Alban", last_name: "Porcheron", email: "alban@gmail.com", password: '123456', admin: true, status: "Profession libérale", income: 2500, has_warrantor: true, warrantor_income: 5000)
url_alban           = 'https://avatars1.githubusercontent.com/u/25384564?v=3'
alban.photo_url     = url_alban
mathieu             = User.create!(first_name: "Mathieu", last_name: "Cochet", email: "mathieu@gmail.com", password: '123456', admin: true, status: "Cadre supérieur", income: 2000, has_warrantor: true, warrantor_income: 5000)
url_mathieu         = 'https://avatars3.githubusercontent.com/u/25053116?v=3'
mathieu.photo_url   = url_mathieu
xavier              = User.create!(first_name: "Xavier", last_name: "Martinet", email: "xavier@gmail.com", password: '123456', admin: true, status: "Etudiant", income: 0, has_warrantor: true, warrantor_income: 4500)
url_xavier          = 'https://avatars0.githubusercontent.com/u/1410430?v=3'
xavier.photo_url    = url_xavier
achille             = User.create!(first_name: "Achille", last_name: "Miklitarian", email: "achille@gmail.com", password: '123456', admin: true, status: "Agriculteur", income: 1500, has_warrantor: false, warrantor_income: 0)
url_achille         = 'https://avatars0.githubusercontent.com/u/25386031?v=3'
achille.photo_url   = url_achille
nico                = User.create!(first_name: "Nicolas", last_name: "Bresson", email: "nico@gmail.com", password: '123456', admin: true, status: "Profession libérale", income: 2500, has_warrantor: true, warrantor_income: 5000)
url_nico            = 'https://avatars1.githubusercontent.com/u/26443990?v=3'
nico.photo_url      = url_nico
alexis              = User.create!(first_name: "Alexis", last_name: "Guinebretière", email: "alexis@gmail.com", password: '123456', admin: true, status: "Cadre supérieur", income: 2000, has_warrantor: true, warrantor_income: 5000)
url_alexis          = 'https://avatars1.githubusercontent.com/u/25386153?v=3'
alexis.photo_url    = url_alexis
gautier             = User.create!(first_name: "Gautier", last_name: "Weigert", email: "gautier@gmail.com", password: '123456', admin: true, status: "Etudiant", income: 0, has_warrantor: true, warrantor_income: 4500)
url_gautier         = 'https://avatars3.githubusercontent.com/u/26283143?v=3'
gautier.photo_url   = url_gautier
patrick             = User.create!(first_name: "Patrick", last_name: "Berczelly", email: "patrick@gmail.com", password: '123456', admin: true, status: "Agriculteur", income: 1500, has_warrantor: false, warrantor_income: 0)
url_patrick         = 'https://avatars1.githubusercontent.com/u/27200234?v=3'
patrick.photo_url   = url_patrick
fiona               = User.create!(first_name: "Fiona", last_name: "Picot", email: "fiona@gmail.com", password: '123456', admin: true, status: "Profession libérale", income: 2500, has_warrantor: true, warrantor_income: 5000)
url_fiona           = 'https://avatars2.githubusercontent.com/u/25432253?v=3'
fiona.photo_url     = url_fiona

puts 'Creating Flats...'

oberkampf           = Flat.create!(title: "Studio 20m2 rue oberkampf", description: "Studio 20m2 meublé kitchinette", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "50 Rue Oberkampf, 75020 PARIS", is_address_public: true, subway: "Parmentier", furnished: true, size: 20, rent: 800, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: charles)

urls_oberkampf      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
oberkampf.photo_urls = urls_oberkampf

pyrenees           = Flat.create!(title: "Studio 20m2 pyrénées", description: "Studio 20m2 meublé kitchinette", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "100 Rue Des Pyrénées, 75019 PARIS", is_address_public: true, subway: "Pyrénées", furnished: true, size: 20, rent: 700, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: charles)

urls_pyrenees      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
pyrenees.photo_urls = urls_pyrenees

reuilly           = Flat.create!(title: "Studio 20m2 reuilly", description: "Studio 20m2 meublé kitchinette", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "60 Rue De Reuilly, 75020 PARIS", is_address_public: true, subway: "Montgallet", furnished: true, size: 20, rent: 800, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: charles)

urls_reuilly      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
reuilly.photo_urls = urls_reuilly

nation           = Flat.create!(title: "Studio 20m2 nation", description: "Studio 20m2 meublé kitchinette", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "1 Avenue Du Trone, 75012 PARIS", is_address_public: true, subway: "Nation", furnished: true, size: 20, rent: 800, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: charles)

urls_nation      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
nation.photo_urls = urls_nation

poissonniere           = Flat.create!(title: "Studio 20m2 poissonniere", description: "Studio 20m2 meublé kitchinette", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "10 Rue De Chantilly, 75009 PARIS", is_address_public: true, subway: "Poissonière", furnished: true, size: 20, rent: 800, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: charles)

urls_poissonniere      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
poissonniere.photo_urls = urls_poissonniere

rebeval           = Flat.create!(title: "T5 100m2 rebeval", description: "T5 100m2 rebeval", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "87 Rue Rebeval, 75019 PARIS", is_address_public: true, subway: "Pyrénées", furnished: true, size: 100, rent: 2200, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: charles)

urls_rebeval      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
rebeval.photo_urls = urls_rebeval

gobelins           = Flat.create!(title: "T3 60m2 gobelins", description: "T3 60m2 gobelins", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "3 Avenue Des Gobelins, 75005 PARIS", is_address_public: true, subway: "Les Gobelins", furnished: true, size: 60, rent: 1500, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: charles)

urls_gobelins      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
gobelins.photo_urls = urls_gobelins

censier           = Flat.create!(title: "T2 40m2 rue oberkampf", description: "T2 40m2 rue oberkampf", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "50 Rue Censier, 75005 PARIS", is_address_public: true, subway: "Place Monge", furnished: true, size: 40, rent: 1100, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: charles)

urls_censier      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
censier.photo_urls = urls_censier

montorgueil           = Flat.create!(title: "Studio 20m2 montorgueil", description: "Studio 20m2 meublé kitchinette", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "20 Rue Montorgueil, 75001 PARIS", is_address_public: true, subway: "Les Halles", furnished: true, size: 20, rent: 800, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: charles)

urls_montorgueil      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
montorgueil.photo_urls = urls_montorgueil

puts 'Creating Slots...'

s_1  = Slot.create!(flat: oberkampf, tenant: xavier, starts_at: DateTime.new(2017, 6, 7, 8, 0, 0, 0), status: "Booked")
s_2  = Slot.create!(flat: reuilly, tenant: gautier, starts_at: DateTime.new(2017, 6, 13, 8, 15, 0, 0), status: "Booked")
s_3  = Slot.create!(flat: reuilly, starts_at: DateTime.new(2017, 6, 12, 8, 30, 0, 0), status: "Vacant")
s_4  = Slot.create!(flat: reuilly, tenant: nico, starts_at: DateTime.new(2017, 6, 5, 8, 45, 0, 0), status: "Cancelled")
s_5  = Slot.create!(flat: nation, tenant: fiona, starts_at: DateTime.new(2017, 6, 14, 8, 0, 0, 0), status: "Booked")
s_6  = Slot.create!(flat: nation, tenant: mathieu, starts_at: DateTime.new(2017, 6, 4, 8, 15, 0, 0), status: "Booked")
s_7  = Slot.create!(flat: nation, starts_at: DateTime.new(2017, 6, 2, 8, 30, 0, 0), status: "Vacant")
s_8  = Slot.create!(flat: censier, tenant: alexis, starts_at: DateTime.new(2017, 6, 18, 8, 45, 0, 0), status: "Cancelled")
s_9  = Slot.create!(flat: censier, tenant: patrick, starts_at: DateTime.new(2017, 6, 17, 8, 0, 0, 0), status: "Booked")
s_10  = Slot.create!(flat: censier, tenant: achille, starts_at: DateTime.new(2017, 6, 15, 8, 15, 0, 0), status: "Booked")
s_11  = Slot.create!(flat: gobelins, starts_at: DateTime.new(2017, 6, 20, 8, 30, 0, 0), status: "Vacant")
s_12  = Slot.create!(flat: gobelins, tenant: vincent, starts_at: DateTime.new(2017, 6, 9, 8, 45, 0, 0), status: "Cancelled")

puts 'Creating Bookings...'

b_1  = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: alban)
b_2  = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: nikolay)
b_3  = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: vincent)

puts 'Creating Searches...'

s_1  = Search.create!(size_min: 20, address: "68 Rue Oberkampf, 75020 PARIS", tenant: alban)
s_2  = Search.create!(size_min: 20, address: "68 Rue Oberkampf, 75020 PARIS", tenant: alexis)
s_3  = Search.create!(size_min: 20, address: "68 Rue Oberkampf, 75020 PARIS", tenant: mathieu)
s_4  = Search.create!(size_min: 40, address: "68 Rue Oberkampf, 75020 PARIS", tenant: fiona)
s_5  = Search.create!(size_min: 40, address: "68 Rue Oberkampf, 75020 PARIS", tenant: nico)
s_6  = Search.create!(size_max: 40, address: "68 Rue Oberkampf, 75020 PARIS", tenant: achille)
s_7  = Search.create!(size_max: 40, address: "41 Rue Censier, 75005 PARIS", tenant: xavier)
s_8  = Search.create!(size_max: 40, address: "41 Rue Censier, 75005 PARIS", tenant: patrick)
s_9  = Search.create!(size_max: 40, address: "41 Rue Censier, 75005 PARIS", tenant: gautier)
s_10 = Search.create!(rent_max: 1300, address: "41 Rue Censier, 75005 PARIS", tenant: alban)
s_11 = Search.create!(rent_max: 1300, address: "41 Rue Censier, 75005 PARIS", tenant: xavier)
s_12 = Search.create!(rent_max: 1300, address: "41 Rue Censier, 75005 PARIS", tenant: vincent)
s_13 = Search.create!(rent_max: 1300, address: "41 Rue Censier, 75005 PARIS", tenant: fiona)
s_14 = Search.create!(rent_max: 1300, address: "34 Rue Montorgueil, 75001 PARIS", tenant: alban)
s_15 = Search.create!(rent_max: 1300, address: "34 Rue Montorgueil, 75001 PARIS", tenant: gautier)
s_16 = Search.create!(rent_max: 1300, address: "34 Rue Montorgueil, 75001 PARIS", tenant: xavier)
s_17 = Search.create!(size_min: 90, address: "34 Rue Montorgueil, 75001 PARIS", tenant: vincent)
s_18 = Search.create!(size_min: 90, address: "34 Rue Montorgueil, 75001 PARIS", tenant: fiona)
s_19 = Search.create!(size_min: 90, address: "34 Rue Montorgueil, 75001 PARIS", tenant: mathieu)
s_20 = Search.create!(size_max: 90, address: "10 Rue De Chantilly, 75009 PARIS", tenant: mathieu)
s_21 = Search.create!(size_max: 90, address: "10 Rue De Chantilly, 75009 PARIS", tenant: xavier)
s_22 = Search.create!(size_max: 90, address: "10 Rue De Chantilly, 75009 PARIS", tenant: gautier)

puts 'Finished !'
