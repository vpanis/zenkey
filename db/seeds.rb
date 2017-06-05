puts 'Cleaning DB...'
User.destroy_all
Flat.destroy_all
Slot.destroy_all
Booking.destroy_all
Search.destroy_all

puts 'Creating Users...'

admin               = User.create!(gender: "Homme", email: "admin@gmail.com", password: 'azerty', admin: true, status: "Etudiant", warrantor_type: "Aucun")

charles             = User.create!(gender: "Homme", first_name: "Charles", last_name: "Bénard", email: "charles@gmail.com", password: '123456', status: "Salarié", income: 2000, has_warrantor: true, warrantor_income: 3000, warrantor_type: "Famille", phone_number: "06.00.00.00.01")
url_charles         = 'https://avatars2.githubusercontent.com/u/5082751?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
charles.photo_url   = url_charles
nikolay             = User.create!(gender: "Homme", first_name: "Nikolay", last_name: "Martynov", email: "nikolai@gmail.com", password: '123456', status: "Etudiant", income: 0, has_warrantor: true, warrantor_income: 4500, warrantor_type: "Famille", phone_number: "06.00.00.00.02")
url_nikolay         = 'https://avatars2.githubusercontent.com/u/22763571?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
nikolay.photo_url   = url_nikolay
vincent             = User.create!(gender: "Homme", first_name: "Vincent", last_name: "Panis", email: "vincent@gmail.com", password: '123456', status: "Indépendant", income: 1500, has_warrantor: false, warrantor_income: 0, warrantor_type: "Aucun", phone_number: "06.00.00.00.03")
url_vincent         = 'https://avatars0.githubusercontent.com/u/25386031?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
vincent.photo_url   = url_vincent
alban               = User.create!(gender: "Homme", first_name: "Alban", last_name: "Porcheron", email: "alban@gmail.com", password: '123456', status: "Salarié", income: 3500, has_warrantor: true, warrantor_income: 6000, warrantor_type: "Famille", phone_number: "06.00.00.00.04")
url_alban           = 'https://avatars1.githubusercontent.com/u/25384564?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
alban.photo_url     = url_alban
mathieu             = User.create!(gender: "Homme", first_name: "Mathieu", last_name: "Cochet", email: "mathieu@gmail.com", password: '123456', status: "Indépendant", income: 1800, has_warrantor: true, warrantor_income: 2000, warrantor_type: "Famille", phone_number: "06.00.00.00.05")
url_mathieu         = 'https://avatars3.githubusercontent.com/u/25053116?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
mathieu.photo_url   = url_mathieu
xavier              = User.create!(gender: "Homme", first_name: "Xavier", last_name: "Martinet", email: "xavier@gmail.com", password: '123456', status: "Etudiant", income: 0, has_warrantor: true, warrantor_income: 4500, warrantor_type: "Famille", phone_number: "06.00.00.00.06")
url_xavier          = 'https://avatars0.githubusercontent.com/u/1410430?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
xavier.photo_url    = url_xavier
achille             = User.create!(gender: "Homme", first_name: "Achille", last_name: "Miklitarian", email: "achille@gmail.com", password: '123456', status: "Salarié", income: 1500, has_warrantor: false, warrantor_income: 0, warrantor_type: "Aucun", phone_number: "06.00.00.00.07")
url_achille         = 'https://avatars0.githubusercontent.com/u/25386031?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
achille.photo_url   = url_achille
nico                = User.create!(gender: "Homme", first_name: "Nicolas", last_name: "Bresson", email: "nico@gmail.com", password: '123456', status: "Salarié", income: 2500, has_warrantor: true, warrantor_income: 5000, warrantor_type: "Famille", phone_number: "06.00.00.00.10")
url_nico            = 'https://avatars1.githubusercontent.com/u/26443990?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
nico.photo_url      = url_nico
alexis              = User.create!(gender: "Homme", first_name: "Alexis", last_name: "Guinebretière", email: "alexis@gmail.com", password: '123456', status: "Autre", income: 2000, has_warrantor: true, warrantor_income: 5000, warrantor_type: "Famille", phone_number: "06.00.00.00.11")
url_alexis          = 'https://avatars1.githubusercontent.com/u/25386153?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
alexis.photo_url    = url_alexis
gautier             = User.create!(gender: "Homme", first_name: "Gautier", last_name: "Weigert", email: "gautier@gmail.com", password: '123456', status: "Etudiant", income: 0, has_warrantor: true, warrantor_income: 4500, warrantor_type: "Famille", phone_number: "06.00.00.00.12")
url_gautier         = 'https://avatars3.githubusercontent.com/u/26283143?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
gautier.photo_url   = url_gautier
patrick             = User.create!(gender: "Homme", first_name: "Patrick", last_name: "Berczelly", email: "patrick@gmail.com", password: '123456', status: "Autre", income: 1500, has_warrantor: false, warrantor_income: 0, warrantor_type: "Aucun", phone_number: "06.00.00.00.13")
url_patrick         = 'https://avatars1.githubusercontent.com/u/27200234?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
patrick.photo_url   = url_patrick
fiona               = User.create!(gender: "Femme", first_name: "Fiona", last_name: "Picot", email: "fiona@gmail.com", password: '123456', status: "Indépendant", income: 2000, has_warrantor: true, warrantor_income: 2000, warrantor_type: "Famille", phone_number: "06.00.00.00.14")
url_fiona           = 'https://avatars2.githubusercontent.com/u/25432253?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
fiona.photo_url     = url_fiona
alex                = User.create!(gender: "Homme", first_name: "Alex", last_name: "Grenier", email: "alex@gmail.com", password: '123456', status: "Indépendant", income: 2000, has_warrantor: true, warrantor_income: 2000, warrantor_type: "Famille", phone_number: "06.00.00.00.15")
url_alex            = 'https://avatars2.githubusercontent.com/u/25634191?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
alex.photo_url      = url_alex
alexandre           = User.create!(gender: "Homme", first_name: "Alexandre", last_name: "Deniau", email: "alexandre@gmail.com", password: '123456', status: "Indépendant", income: 2000, has_warrantor: true, warrantor_income: 2000, warrantor_type: "Famille", phone_number: "06.00.00.00.16")
url_alexandre       = 'https://avatars0.githubusercontent.com/u/26217119?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
alexandre.photo_url = url_alexandre
arnaud              = User.create!(gender: "Homme", first_name: "Arnaud", last_name: "Boscq", email: "arnaud@gmail.com", password: '123456', status: "Indépendant", income: 2000, has_warrantor: true, warrantor_income: 2000, warrantor_type: "Famille", phone_number: "06.00.00.00.17")
url_arnaud          = 'https://avatars3.githubusercontent.com/u/26063436?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
arnaud.photo_url    = url_arnaud
aurore              = User.create!(gender: "Femme", first_name: "Aurore", last_name: "Courtois", email: "aurore@gmail.com", password: '123456', status: "Indépendant", income: 2000, has_warrantor: true, warrantor_income: 2000, warrantor_type: "Famille", phone_number: "06.00.00.00.20")
url_aurore          = 'https://avatars2.githubusercontent.com/u/25432253?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
aurore.photo_url    = url_aurore
benjamin            = User.create!(gender: "Homme", first_name: "Benjamin", last_name: "Poucin", email: "benjamin@gmail.com", password: '123456', status: "Indépendant", income: 2000, has_warrantor: true, warrantor_income: 2000, warrantor_type: "Famille", phone_number: "06.00.00.00.21")
url_benjamin        = 'https://avatars0.githubusercontent.com/u/25391939?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
benjamin.photo_url  = url_benjamin
benoit              = User.create!(gender: "Homme", first_name: "Benoit", last_name: "Paternot", email: "benoit@gmail.com", password: '123456', status: "Indépendant", income: 2000, has_warrantor: true, warrantor_income: 2000, warrantor_type: "Famille", phone_number: "06.00.00.00.22")
url_benoit          = 'https://avatars2.githubusercontent.com/u/25432253?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
benoit.photo_url    = url_benoit
bruno               = User.create!(gender: "Homme", first_name: "Bruno", last_name: "Lajoie", email: "bruno@gmail.com", password: '123456', status: "Indépendant", income: 2000, has_warrantor: true, warrantor_income: 2000, warrantor_type: "Famille", phone_number: "06.00.00.00.23")
url_bruno           = 'https://avatars2.githubusercontent.com/u/25432253?v=3'
charles.description = 'Qui n’a jamais pensé à écrire sa biographie, son autobiographie ?! A vrai dire, je penses pouvoir dire que chaque personne pense au moins une fois dans sa vie à écrire ses mémoires, réciter les évènements qui ont marqué leurs années d’existence. Pourquoi ? Tout simplement pour ne pas avoir vécu sans laisser de traces. Une biographie est en effet le moyen le plus efficace pour parler de soi et qui sait faire parler de soi aussi.'
bruno.photo_url     = url_bruno

puts 'Creating Flats...'

oberkampf           = Flat.new(title: "T3 66m2 rue oberkampf", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "50 Rue Oberkampf, 75020 PARIS", is_address_public: true, subway: "Parmentier", furnished: true, size: 66, rent: 1600, rental_costs: 100, floor: 4, rooms: 3, bedrooms: 2, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 1600, landlord: charles)
oberkampf.description = 'Cet appartement 2 pièces de 20 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
oberkampf.save!
urls_oberkampf      = [
  'http://res.cloudinary.com/vpanis/image/upload/v1496666789/IMG_1052_jbqkm2.jpg',
  'http://res.cloudinary.com/vpanis/image/upload/v1496666809/IMG_1051_smp3g9.jpg',
  'http://res.cloudinary.com/vpanis/image/upload/v1496666819/IMG_1053_ahnntl.jpg',
  'http://res.cloudinary.com/vpanis/image/upload/v1496666853/IMG_1057_wabemf.jpg'
]
oberkampf.photo_urls = urls_oberkampf

pyrenees           = Flat.new(title: "Studio 35m2 pyrénées", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "100 Rue Des Pyrénées, 75019 PARIS", is_address_public: true, subway: "Pyrénées", furnished: true, size: 35, rent: 700, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 2.5, has_warrantor: true, warrantor_income_ratio: 2.5, deposit: 800, landlord: alban)
pyrenees.description = 'Cet appartement 2 pièces de 35 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
pyrenees.save!
urls_pyrenees      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
pyrenees.photo_urls = urls_pyrenees

reuilly           = Flat.new(title: "Studio 20m2 reuilly", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "60 Rue De Reuilly, 75020 PARIS", is_address_public: true, subway: "Montgallet", furnished: true, size: 20, rent: 800, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: alban)
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

gobelins           = Flat.new(title: "T3 60m2 gobelins", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "3 Avenue Des Gobelins, 75005 PARIS", is_address_public: true, subway: "Les Gobelins", furnished: true, size: 60, rent: 1200, rental_costs: 100, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: alban)
gobelins.description = 'Cet appartement 3 pièces de 60 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
gobelins.save!
urls_gobelins      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
gobelins.photo_urls = urls_gobelins

censier           = Flat.new(title: "T2 40m2 rue oberkampf", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "50 Rue Censier, 75005 PARIS", is_address_public: true, subway: "Place Monge", furnished: true, size: 40, rent: 1100, rental_costs: 100, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: alban)
censier.description = 'Cet appartement 2 pièces de 40 m² avec une vue mer dégagée, est situé au dernier étage dans une petite résidence de standing calme et recherchée au Mourillon.'
censier.save!
urls_censier      = [
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300',
  'https://unsplash.it/300/300'
]
censier.photo_urls = urls_censier

montorgueil           = Flat.new(title: "Studio 20m2 montorgueil", description: "Studio 20m2 meublé kitchinette", rental_type: "Location", availability_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), min_duration: 6, address: "20 Rue Montorgueil, 75001 PARIS", is_address_public: true, subway: "Les Halles", furnished: true, size: 20, rent: 500, rental_costs: 50, floor: 4, rooms: 1, bedrooms: 1, balcony: false, elevator: false, separate_bathroom: false, parking: false, status: "Available", income_ratio: 3, has_warrantor: true, warrantor_income_ratio: 3, deposit: 800, landlord: alban)
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

s_1   = Slot.create!(flat: oberkampf, tenant: xavier, starts_at: DateTime.new(2017, 6, 1, 8, 0, 0, 0), status: "Booked")
s_2   = Slot.create!(flat: oberkampf, tenant: gautier, starts_at: DateTime.new(2017, 6, 1, 8, 15, 0, 0), status: "Booked")
s_3   = Slot.create!(flat: oberkampf, starts_at: DateTime.new(2017, 6, 13, 8, 30, 0, 0), status: "Vacant")
s_4   = Slot.create!(flat: oberkampf, tenant: nico, starts_at: DateTime.new(2017, 6, 1, 1, 45, 0, 0), status: "Cancelled")
s_5   = Slot.create!(flat: oberkampf, tenant: fiona, starts_at: DateTime.new(2017, 6, 2, 8, 0, 0, 0), status: "Booked")
s_6   = Slot.create!(flat: oberkampf, tenant: mathieu, starts_at: DateTime.new(2017, 6, 2, 8, 15, 0, 0), status: "Booked")
s_7   = Slot.create!(flat: oberkampf, starts_at: DateTime.new(2017, 6, 2, 8, 30, 0, 0), status: "Vacant")
s_8   = Slot.create!(flat: oberkampf, tenant: alexis, starts_at: DateTime.new(2017, 6, 2, 8, 45, 0, 0), status: "Cancelled")
s_9   = Slot.create!(flat: oberkampf, tenant: patrick, starts_at: DateTime.new(2017, 6, 15, 8, 0, 0, 0), status: "Booked")
s_10  = Slot.create!(flat: oberkampf, tenant: achille, starts_at: DateTime.new(2017, 6, 15, 8, 15, 0, 0), status: "Booked")
s_11  = Slot.create!(flat: oberkampf, starts_at: DateTime.new(2017, 6, 15, 8, 30, 0, 0), status: "Vacant")
s_12  = Slot.create!(flat: oberkampf, tenant: vincent, starts_at: DateTime.new(2017, 6, 15, 8, 45, 0, 0), status: "Cancelled")
s_13  = Slot.create!(flat: oberkampf, tenant: arnaud, starts_at: DateTime.new(2017, 6, 13, 9, 0, 0, 0), status: "Booked")
s_14  = Slot.create!(flat: oberkampf, tenant: aurore, starts_at: DateTime.new(2017, 6, 13, 9, 15, 0, 0), status: "Booked")
s_15  = Slot.create!(flat: oberkampf, starts_at: DateTime.new(2017, 6, 13, 9, 30, 0, 0), status: "Vacant")
s_16  = Slot.create!(flat: oberkampf, tenant: benjamin, starts_at: DateTime.new(2017, 6, 13, 9, 45, 0, 0), status: "Cancelled")
s_17  = Slot.create!(flat: oberkampf, tenant: alex, starts_at: DateTime.new(2017, 6, 14, 9, 0, 0, 0), status: "Booked")
s_18  = Slot.create!(flat: oberkampf, tenant: alexandre, starts_at: DateTime.new(2017, 6, 14, 9, 15, 0, 0), status: "Booked")
s_19  = Slot.create!(flat: oberkampf, starts_at: DateTime.new(2017, 6, 14, 9, 30, 0, 0), status: "Vacant")
s_20  = Slot.create!(flat: oberkampf, tenant: bruno, starts_at: DateTime.new(2017, 6, 14, 9, 45, 0, 0), status: "Cancelled")
s_21  = Slot.create!(flat: oberkampf, tenant: nikolay, starts_at: DateTime.new(2017, 6, 15, 9, 0, 0, 0), status: "Booked")
s_21  = Slot.create!(flat: oberkampf, tenant: benoit, starts_at: DateTime.new(2017, 6, 15, 9, 15, 0, 0), status: "Booked")


puts 'Creating Bookings...'

b_1    = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: fiona)
b_2    = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 9, 1, 0, 0, 0, 0), tenant: mathieu)
b_3    = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: achille)
b_4    = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 8, 1, 0, 0, 0, 0), tenant: xavier)
b_5    = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: nico)
b_6    = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 8, 1, 0, 0, 0, 0), tenant: alexis)
b_7    = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 7, 1, 0, 0, 0, 0), tenant: patrick)
b_8    = Booking.create!(flat: oberkampf, starting_date: DateTime.new(2017, 9, 1, 0, 0, 0, 0), tenant: gautier)

puts 'Creating Searches...'

s_1  = Search.create!(size_min: 20, rent_max: 700, address: "34 Rue Montorgueil, 75001 PARIS", tenant: alban)
s_2  = Search.create!(size_min: 20, rent_max: 700, address: "34 Rue Montorgueil, 75001 PARIS", tenant: alexis)
s_3  = Search.create!(size_min: 20, rent_max: 800, address: "34 Rue Montorgueil, 75001 PARIS", tenant: mathieu)
s_4  = Search.create!(size_min: 30, rent_max: 1100, address: "34 Rue Montorgueil, 75001 PARIS", tenant: fiona)
s_5  = Search.create!(size_min: 30, rent_max: 1200, address: "34 Rue Montorgueil, 75001 PARIS", tenant: nico)
s_6  = Search.create!(size_min: 30, rent_max: 1300, address: "34 Rue Montorgueil, 75001 PARIS", tenant: achille)
s_7  = Search.create!(size_min: 40, rent_max: 1200, address: "41 Rue Censier, 75005 PARIS", tenant: xavier)
s_8  = Search.create!(size_min: 40, rent_max: 1200, address: "41 Rue Censier, 75005 PARIS", tenant: patrick)
s_9  = Search.create!(size_min: 40, rent_max: 1100, address: "41 Rue Censier, 75005 PARIS", tenant: gautier)
s_10 = Search.create!(size_min: 50, rent_max: 1300, address: "41 Rue Censier, 75005 PARIS", tenant: alban)
s_11 = Search.create!(size_min: 50, rent_max: 1300, address: "41 Rue Censier, 75005 PARIS", tenant: xavier)
s_12 = Search.create!(size_min: 50, rent_max: 1300, address: "41 Rue Censier, 75005 PARIS", tenant: vincent)
s_13 = Search.create!(size_min: 60, rent_max: 1300, address: "41 Rue Censier, 75005 PARIS", tenant: alex)
s_14 = Search.create!(size_min: 60, rent_max: 1300, address: "34 Rue Montorgueil, 75001 PARIS", tenant: alexandre)
s_15 = Search.create!(size_min: 60, rent_max: 1300, address: "34 Rue Montorgueil, 75001 PARIS", tenant: aurore)
s_16 = Search.create!(size_min: 70, rent_max: 1800, address: "68 Rue Oberkampf, 75020 PARIS", tenant: benjamin)
s_17 = Search.create!(size_min: 70, rent_max: 1800, address: "68 Rue Oberkampf, 75020 PARIS", tenant: benoit)
s_18 = Search.create!(size_min: 70, rent_max: 1800, address: "68 Rue Oberkampf, 75020 PARIS", tenant: bruno)
s_19 = Search.create!(size_min: 80, rent_max: 2100, address: "68 Rue Oberkampf, 75020 PARIS", tenant: mathieu)
s_20 = Search.create!(size_min: 80, rent_max: 2100, address: "68 Rue Oberkampf, 75020 PARIS", tenant: mathieu)
s_21 = Search.create!(size_min: 90, rent_max: 2100, address: "68 Rue Oberkampf, 75020 PARIS", tenant: xavier)
s_22 = Search.create!(size_min: 90, rent_max: 2200, address: "68 Rue Oberkampf, 75020 PARIS", tenant: gautier)

puts 'Finished !'
