puts 'Cleaning DB...'
User.destroy_all
Flat.destroy_all
Slot.destroy_all
Booking.destroy_all

puts 'Creating Users...'

admin               = User.create!(email: "admin@gmail.com", password: 'azerty', admin: true, status: "Etudiant")

charles             = User.create!(first_name: "Charles", last_name: "Bénard", email: "charles@gmail.com", password: '123456', status: "Cadre supérieur", income: 2000, has_warrantor: true, warrantor_income: 3000)
url_charles         = 'https://avatars2.githubusercontent.com/u/5082751?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
charles.photo_url   = url_charles
nikolay             = User.create!(first_name: "Nikolay", last_name: "Martynov", email: "nikolai@gmail.com", password: '123456', status: "Etudiant", income: 0, has_warrantor: true, warrantor_income: 4500)
url_nikolay         = 'https://avatars2.githubusercontent.com/u/22763571?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
nikolay.photo_url   = url_nikolay
vincent             = User.create!(first_name: "Vincent", last_name: "Panis", email: "vincent@gmail.com", password: '123456', status: "Agriculteur", income: 1500, has_warrantor: false, warrantor_income: 0)
url_vincent         = 'https://avatars0.githubusercontent.com/u/25386031?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
vincent.photo_url   = url_vincent
alban               = User.create!(first_name: "Alban", last_name: "Porcheron", email: "alban@gmail.com", password: '123456', status: "Profession libérale", income: 3500, has_warrantor: true, warrantor_income: 6000)
url_alban           = 'https://avatars1.githubusercontent.com/u/25384564?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
alban.photo_url     = url_alban
mathieu             = User.create!(first_name: "Mathieu", last_name: "Cochet", email: "mathieu@gmail.com", password: '123456', status: "Cadre supérieur", income: 1800, has_warrantor: true, warrantor_income: 2000)
url_mathieu         = 'https://avatars3.githubusercontent.com/u/25053116?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
mathieu.photo_url   = url_mathieu
xavier              = User.create!(first_name: "Xavier", last_name: "Martinet", email: "xavier@gmail.com", password: '123456', status: "Etudiant", income: 0, has_warrantor: true, warrantor_income: 4500)
url_xavier          = 'https://avatars0.githubusercontent.com/u/1410430?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
xavier.photo_url    = url_xavier
achille             = User.create!(first_name: "Achille", last_name: "Miklitarian", email: "achille@gmail.com", password: '123456', status: "Agriculteur", income: 1500, has_warrantor: false, warrantor_income: 0)
url_achille         = 'https://avatars0.githubusercontent.com/u/25386031?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
achille.photo_url   = url_achille
nico                = User.create!(first_name: "Nicolas", last_name: "Bresson", email: "nico@gmail.com", password: '123456', status: "Profession libérale", income: 2500, has_warrantor: true, warrantor_income: 5000)
url_nico            = 'https://avatars1.githubusercontent.com/u/26443990?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
nico.photo_url      = url_nico
alexis              = User.create!(first_name: "Alexis", last_name: "Guinebretière", email: "alexis@gmail.com", password: '123456', status: "Cadre supérieur", income: 2000, has_warrantor: true, warrantor_income: 5000)
url_alexis          = 'https://avatars1.githubusercontent.com/u/25386153?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
alexis.photo_url    = url_alexis
gautier             = User.create!(first_name: "Gautier", last_name: "Weigert", email: "gautier@gmail.com", password: '123456', status: "Etudiant", income: 0, has_warrantor: true, warrantor_income: 4500)
url_gautier         = 'https://avatars3.githubusercontent.com/u/26283143?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
gautier.photo_url   = url_gautier
patrick             = User.create!(first_name: "Patrick", last_name: "Berczelly", email: "patrick@gmail.com", password: '123456', status: "Agriculteur", income: 1500, has_warrantor: false, warrantor_income: 0)
url_patrick         = 'https://avatars1.githubusercontent.com/u/27200234?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
patrick.photo_url   = url_patrick
fiona               = User.create!(first_name: "Fiona", last_name: "Picot", email: "fiona@gmail.com", password: '123456', status: "Profession libérale", income: 2000, has_warrantor: true, warrantor_income: 2000)
url_fiona           = 'https://avatars2.githubusercontent.com/u/25432253?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
fiona.photo_url     = url_fiona

puts 'Creating Flats...'

oberkampf           = Flat.new(title: "Studio 20m2 rue oberkampf", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "50 Rue Oberkampf, 75020 PARIS", is_address_public: true, subway: "Parmentier", furnished: true, size: 20, rent: 800, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: charles)
oberkampf.description = 'Cet appartement 2 pièces de 20 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
oberkampf.save!
urls_oberkampf      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
oberkampf.photo_urls = urls_oberkampf

pyrenees           = Flat.new(title: "Studio 35m2 pyrénées", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "100 Rue Des Pyrénées, 75019 PARIS", is_address_public: true, subway: "Pyrénées", furnished: true, size: 35, rent: 700, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 2.5, has_warrantor: true, warrantor_income_ratio: 2.5, deposit: 800, landlord: charles)
pyrenees.description = 'Cet appartement 2 pièces de 35 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
pyrenees.save!
urls_pyrenees      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
pyrenees.photo_urls = urls_pyrenees

reuilly           = Flat.new(title: "Studio 20m2 reuilly", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "60 Rue De Reuilly, 75020 PARIS", is_address_public: true, subway: "Montgallet", furnished: true, size: 20, rent: 800, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: charles)
reuilly.description = 'Cet appartement 2 pièces de 20 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
reuilly.save!
urls_reuilly      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
reuilly.photo_urls = urls_reuilly

nation           = Flat.new(title: "Studio 20m2 nation", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "1 Avenue Du Trone, 75012 PARIS", is_address_public: true, subway: "Nation", furnished: true, size: 20, rent: 800, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 2.5, has_warrantor: true, warrantor_income_ratio: 2.5, deposit: 800, landlord: alban)
nation.description = 'Cet appartement 2 pièces de 20 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
nation.save!
urls_nation      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
nation.photo_urls = urls_nation

poissonniere           = Flat.new(title: "Studio 20m2 poissonniere", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "10 Rue De Chantilly, 75009 PARIS", is_address_public: true, subway: "Poissonière", furnished: true, size: 20, rent: 600, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: alban)
poissonniere.description = 'Cet appartement 2 pièces de 20 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
poissonniere.save!
urls_poissonniere      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
poissonniere.photo_urls = urls_poissonniere

rebeval           = Flat.new(title: "T5 100m2 rebeval", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "87 Rue Rebeval, 75019 PARIS", is_address_public: true, subway: "Pyrénées", furnished: true, size: 100, rent: 2200, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 2.5, has_warrantor: true, warrantor_income_ratio: 2.5, deposit: 800, landlord: alban)
rebeval.description = 'Cet appartement 5 pièces de 100 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
rebeval.save!
urls_rebeval      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
rebeval.photo_urls = urls_rebeval

gobelins           = Flat.new(title: "T3 60m2 gobelins", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "3 Avenue Des Gobelins, 75005 PARIS", is_address_public: true, subway: "Les Gobelins", furnished: true, size: 60, rent: 1200, rental_costs: 100, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: vincent)
gobelins.description = 'Cet appartement 3 pièces de 60 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
gobelins.save!
urls_gobelins      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
gobelins.photo_urls = urls_gobelins

censier           = Flat.new(title: "T2 40m2 rue oberkampf", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "50 Rue Censier, 75005 PARIS", is_address_public: true, subway: "Place Monge", furnished: true, size: 40, rent: 1100, rental_costs: 100, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: vincent)
censier.description = 'Cet appartement 2 pièces de 40 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
censier.save!
urls_censier      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
censier.photo_urls = urls_censier

montorgueil           = Flat.new(title: "Studio 20m2 montorgueil", description: "Studio 20m2 meublé kitchinette", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "20 Rue Montorgueil, 75001 PARIS", is_address_public: true, subway: "Les Halles", furnished: true, size: 20, rent: 500, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: vincent)
montorgueil.description = 'Cet appartement 2 pièces de 20 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
montorgueil.save!
urls_montorgueil      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
montorgueil.photo_urls = urls_montorgueil

puts 'Creating Slots...'

s_1   = Slot.create!(flat: oberkampf, tenant: xavier, starts_at: DateTime.new(2017, 6, 13, 8, 0, 0, 0), status: "Booked")
s_2   = Slot.create!(flat: oberkampf, tenant: gautier, starts_at: DateTime.new(2017, 6, 13, 8, 15, 0, 0), status: "Booked")
s_3   = Slot.create!(flat: oberkampf, starts_at: DateTime.new(2017, 6, 13, 8, 30, 0, 0), status: "Vacant")
s_4   = Slot.create!(flat: oberkampf, tenant: nico, starts_at: DateTime.new(2017, 6, 13, 8, 45, 0, 0), status: "Cancelled")
s_5   = Slot.create!(flat: oberkampf, tenant: fiona, starts_at: DateTime.new(2017, 6, 14, 8, 0, 0, 0), status: "Booked")
s_6   = Slot.create!(flat: oberkampf, tenant: mathieu, starts_at: DateTime.new(2017, 6, 14, 8, 15, 0, 0), status: "Booked")
s_7   = Slot.create!(flat: oberkampf, starts_at: DateTime.new(2017, 6, 14, 8, 30, 0, 0), status: "Vacant")
s_8   = Slot.create!(flat: oberkampf, tenant: alexis, starts_at: DateTime.new(2017, 6, 14, 8, 45, 0, 0), status: "Cancelled")
s_9   = Slot.create!(flat: oberkampf, tenant: patrick, starts_at: DateTime.new(2017, 6, 15, 8, 0, 0, 0), status: "Booked")
s_10  = Slot.create!(flat: oberkampf, tenant: achille, starts_at: DateTime.new(2017, 6, 15, 8, 15, 0, 0), status: "Booked")
s_11  = Slot.create!(flat: oberkampf, starts_at: DateTime.new(2017, 6, 15, 8, 30, 0, 0), status: "Vacant")
s_12  = Slot.create!(flat: oberkampf, tenant: vincent, starts_at: DateTime.new(2017, 6, 15, 8, 45, 0, 0), status: "Cancelled")
s_13  = Slot.create!(flat: pyrenees, tenant: xavier, starts_at: DateTime.new(2017, 6, 13, 9, 0, 0, 0), status: "Booked")
s_14  = Slot.create!(flat: pyrenees, tenant: gautier, starts_at: DateTime.new(2017, 6, 13, 9, 15, 0, 0), status: "Booked")
s_15  = Slot.create!(flat: pyrenees, starts_at: DateTime.new(2017, 6, 13, 9, 30, 0, 0), status: "Vacant")
s_16  = Slot.create!(flat: pyrenees, tenant: nico, starts_at: DateTime.new(2017, 6, 13, 9, 45, 0, 0), status: "Cancelled")
s_17  = Slot.create!(flat: pyrenees, tenant: fiona, starts_at: DateTime.new(2017, 6, 14, 9, 0, 0, 0), status: "Booked")
s_18  = Slot.create!(flat: pyrenees, tenant: mathieu, starts_at: DateTime.new(2017, 6, 14, 9, 15, 0, 0), status: "Booked")
s_19  = Slot.create!(flat: pyrenees, starts_at: DateTime.new(2017, 6, 14, 9, 30, 0, 0), status: "Vacant")
s_20  = Slot.create!(flat: pyrenees, tenant: alexis, starts_at: DateTime.new(2017, 6, 14, 9, 45, 0, 0), status: "Cancelled")
s_21  = Slot.create!(flat: pyrenees, tenant: patrick, starts_at: DateTime.new(2017, 6, 15, 9, 0, 0, 0), status: "Booked")
s_22  = Slot.create!(flat: pyrenees, tenant: achille, starts_at: DateTime.new(2017, 6, 15, 9, 15, 0, 0), status: "Booked")
s_23  = Slot.create!(flat: pyrenees, starts_at: DateTime.new(2017, 6, 15, 9, 30, 0, 0), status: "Vacant")
s_24  = Slot.create!(flat: pyrenees, tenant: vincent, starts_at: DateTime.new(2017, 6, 15, 9, 45, 0, 0), status: "Cancelled")

puts 'Creating Bookings...'

b_1   = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: fiona)
b_2   = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: mathieu)
b_3   = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: achille)
b_4   = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: xavier)
b_5   = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: nico)
b_6   = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: alexis)
b_7   = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: patrick)
b_8   = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: gautier)
b_9   = Booking.create!(flat: pyrenees, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: fiona)
b_10   = Booking.create!(flat: pyrenees, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: mathieu)
b_11   = Booking.create!(flat: pyrenees, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: achille)
b_12   = Booking.create!(flat: pyrenees, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: xavier)
b_13   = Booking.create!(flat: pyrenees, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: nico)
b_14   = Booking.create!(flat: pyrenees, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: alexis)
b_15   = Booking.create!(flat: pyrenees, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: patrick)
b_16   = Booking.create!(flat: pyrenees, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: gautier)


# puts 'Creating Searches...'

# s_1  = Search.create!(size_min: 20, address: "68 Rue Oberkampf, 75020 PARIS", tenant: alban)
# s_2  = Search.create!(size_min: 20, address: "68 Rue Oberkampf, 75020 PARIS", tenant: alexis)
# s_3  = Search.create!(size_min: 20, address: "68 Rue Oberkampf, 75020 PARIS", tenant: mathieu)
# s_4  = Search.create!(size_min: 40, address: "68 Rue Oberkampf, 75020 PARIS", tenant: fiona)
# s_5  = Search.create!(size_min: 40, address: "68 Rue Oberkampf, 75020 PARIS", tenant: nico)
# s_6  = Search.create!(size_max: 40, address: "68 Rue Oberkampf, 75020 PARIS", tenant: achille)
# s_7  = Search.create!(size_max: 40, address: "41 Rue Censier, 75005 PARIS", tenant: xavier)
# s_8  = Search.create!(size_max: 40, address: "41 Rue Censier, 75005 PARIS", tenant: patrick)
# s_9  = Search.create!(size_max: 40, address: "41 Rue Censier, 75005 PARIS", tenant: gautier)
# s_10 = Search.create!(rent_max: 1300, address: "41 Rue Censier, 75005 PARIS", tenant: alban)
# s_11 = Search.create!(rent_max: 1300, address: "41 Rue Censier, 75005 PARIS", tenant: xavier)
# s_12 = Search.create!(rent_max: 1300, address: "41 Rue Censier, 75005 PARIS", tenant: vincent)
# s_13 = Search.create!(rent_max: 1300, address: "41 Rue Censier, 75005 PARIS", tenant: fiona)
# s_14 = Search.create!(rent_max: 1300, address: "34 Rue Montorgueil, 75001 PARIS", tenant: alban)
# s_15 = Search.create!(rent_max: 1300, address: "34 Rue Montorgueil, 75001 PARIS", tenant: gautier)
# s_16 = Search.create!(rent_max: 1300, address: "34 Rue Montorgueil, 75001 PARIS", tenant: xavier)
# s_17 = Search.create!(size_min: 90, address: "34 Rue Montorgueil, 75001 PARIS", tenant: vincent)
# s_18 = Search.create!(size_min: 90, address: "34 Rue Montorgueil, 75001 PARIS", tenant: fiona)
# s_19 = Search.create!(size_min: 90, address: "34 Rue Montorgueil, 75001 PARIS", tenant: mathieu)
# s_20 = Search.create!(size_max: 90, address: "10 Rue De Chantilly, 75009 PARIS", tenant: mathieu)
# s_21 = Search.create!(size_max: 90, address: "10 Rue De Chantilly, 75009 PARIS", tenant: xavier)
# s_22 = Search.create!(size_max: 90, address: "10 Rue De Chantilly, 75009 PARIS", tenant: gautier)

puts 'Finished !'
