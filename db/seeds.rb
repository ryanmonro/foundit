# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
GameLocation.destroy_all
Found.destroy_all
Location.destroy_all
Game.destroy_all
User.destroy_all

Game.create(name: "Game One")

l4 = Location.new(name: "Smith St Bazaar", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper ultrices odio vel maximus. Donec quis tempor arcu, et accumsan felis. Aliquam erat volutpat. Nulla facilisi. Aliquam vel mauris ac velit maximus tempor sit amet ut neque.", lat: -37.799849, long: 144.983981)
l4.image = File.open('app/assets/images/bazaar.jpg')
l4.save

l5 = Location.new(name: "Cafe Alley", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper ultrices odio vel maximus. Donec quis tempor arcu, et accumsan felis. Aliquam erat volutpat. Nulla facilisi. Aliquam vel mauris ac velit maximus tempor sit amet ut neque.", lat: -37.817052, long: 144.965778)
l5.image = File.open('app/assets/images/cafes.jpg')
l5.save

l6 = Location.new(name: "Naked for Satan", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper ultrices odio vel maximus. Donec quis tempor arcu, et accumsan felis. Aliquam erat volutpat. Nulla facilisi. Aliquam vel mauris ac velit maximus tempor sit amet ut neque.", lat: -37.798765, long: 144.978198)
l6.image = File.open('app/assets/images/nfs.jpg')
l6.save

l7 = Location.new(name: "Record Store", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper ultrices odio vel maximus. Donec quis tempor arcu, et accumsan felis. Aliquam erat volutpat. Nulla facilisi. Aliquam vel mauris ac velit maximus tempor sit amet ut neque.", lat: -37.795619, long: 144.978826)
l7.image = File.open('app/assets/images/records.jpg')
l7.save

l8 = Location.new(name: "Schmucks Bagelry", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper ultrices odio vel maximus. Donec quis tempor arcu, et accumsan felis. Aliquam erat volutpat. Nulla facilisi. Aliquam vel mauris ac velit maximus tempor sit amet ut neque.", lat: -37.814673, long: 144.956918)
l8.image = File.open('app/assets/images/schmucks.jpg')
l8.save

l9 = Location.new(name: "Smith & Daughters", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper ultrices odio vel maximus. Donec quis tempor arcu, et accumsan felis. Aliquam erat volutpat. Nulla facilisi. Aliquam vel mauris ac velit maximus tempor sit amet ut neque.", lat: -37.802215, long: 144.977612)
l9.image = File.open('app/assets/images/smith.jpg')
l9.save

l10 = Location.new(name: "Transformer", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper ultrices odio vel maximus. Donec quis tempor arcu, et accumsan felis. Aliquam erat volutpat. Nulla facilisi. Aliquam vel mauris ac velit maximus tempor sit amet ut neque.", lat: -37.795871, long: 144.979376)
l10.image = File.open('app/assets/images/transformer.jpg')
l10.save

l1 = Location.new(name: "joker", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper ultrices odio vel maximus. Donec quis tempor arcu, et accumsan felis. Aliquam erat volutpat. Nulla facilisi. Aliquam vel mauris ac velit maximus tempor sit amet ut neque. Etiam condimentum ante a ullamcorper vestibulum. Sed fringilla arcu quis accumsan luctus. Etiam in orci sapien. Vestibulum in nunc non lectus tempor varius.")
l1.image = File.open('app/assets/images/joker.jpg')
l1.save

l2 = Location.new(name: "Horse", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam erat volutpat. Nulla facilisi. Aliquam vel mauris ac velit maximus tempor sit amet ut neque. Etiam condimentum ante a ullamcorper vestibulum. Sed fringilla arcu quis accumsan luctus. Etiam in orci sapien. Vestibulum in nunc non lectus tempor varius.")
l2.image = File.open('app/assets/images/horse.jpg')
l2.save

l3 = Location.new(name: "Cooks Cottage", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper ultrices odio vel maximus. Donec quis tempor arcu, et accumsan felis. Aliquam erat volutpat. Nulla facilisi. Aliquam vel mauris ac velit maximus tempor sit amet ut neque.")
l3.image = File.open('app/assets/images/cooks.jpg')
l3.save

User.create(email: 'one@found.com', password: 'password', username: 'harry')
User.create(email: 'two@found.com', password: 'password', username: 'hermione')
User.create(email: 'three@found.com', password: 'password', username: 'ron')
User.create(email: 'four@found.com', password: 'password', username: 'ginny')

location = Location.all

GameLocation.create(game_id: Game.first.id, location_id: location[0].id )
GameLocation.create(game_id: Game.first.id, location_id: location[1].id )
GameLocation.create(game_id: Game.first.id, location_id: location[2].id )
GameLocation.create(game_id: Game.first.id, location_id: location[3].id )
GameLocation.create(game_id: Game.first.id, location_id: location[4].id )
GameLocation.create(game_id: Game.first.id, location_id: location[5].id )

Found.create(user_id: User.first.id, game_location_id: GameLocation.first.id, points: 10)
