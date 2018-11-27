# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
house = House.create( name: 'Rosebury' )

Room.create([
  { house_id: house.id, name: 'Hall', code: 'GH', area: 5.7, ground_floor: true },
  { house_id: house.id, name: 'Store', code: 'GS1', area: 1.3, ground_floor: true },
  { house_id: house.id, name: 'Relax', code: 'GR', area: 12.1, ground_floor: true },
  { house_id: house.id, name: 'Live', code: 'GL', area: 16.5, ground_floor: true },
  { house_id: house.id, name: 'Utility', code: 'GU', area: 2.7, ground_floor: true },
  { house_id: house.id, name: 'WC', code: 'GLE', area: 2.6, ground_floor: true },
  { house_id: house.id, name: 'WC', code: 'xxx', area: 2.6, ground_floor: false },
  { house_id: house.id, name: 'Bathroom', code: 'xxx', area: 4.1, ground_floor: false },
  { house_id: house.id, name: 'Ensuite 1', code: 'xxx', area: 3.4, ground_floor: false }
])

Tile.create([
  { name: 'Bianco Carrara Matt', description: '600 x 600', cost: 20.95, per_box: 4, per_square_meter: 2.78 },
  { name: 'Amelia Mist', description: '890 x 442', cost: 20.95, per_box: 2, per_square_meter: 2.46 },
  { name: 'Doblo', description: '600 x 600', cost: 22.95, per_box: 4, per_square_meter: 2.78 },
  { name: 'Drift White / Grey / Brown', description: '900 x 150', cost: 29.95, per_box: 8, per_square_meter: 7.41 },
  { name: 'Oxford', description: '750 x 750', cost: 29.95, per_box: 2, per_square_meter: 1.78 },
  { name: 'Alamo Ash / Natural', description: '1200 x 200', cost: 29.95, per_box: 5, per_square_meter: 4.17 },
  { name: 'Logwood Taupe / White', description: '1000 x 165', cost: 31.45, per_box: 6, per_square_meter: 6.25 }
])

# house.rooms.each{ |r| r.tiles = Tile.all }