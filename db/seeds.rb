User.create(name: :Ivan, email: "ivan@gmail.com", password: "123", password_confirmation: "123")

Pokemon.create(name: :Bulbasaur, primary_type: :Grass, secondary_type: :Poison, photo_url: "http://icons.iconarchive.com/icons/hektakun/pokemon/72/001-Bulbasaur-icon.png")
Pokemon.create(name: :Ivysaur, primary_type: :Grass, secondary_type: :Poison, photo_url: "http://icons.iconarchive.com/icons/hektakun/pokemon/72/002-Ivysaur-icon.png")
Pokemon.create(name: :Venusaur, primary_type: :Grass, secondary_type: :Poison, photo_url: "http://icons.iconarchive.com/icons/hektakun/pokemon/72/003-Venusaur-icon.png")
Pokemon.create(name: :Charmander, primary_type: :Fire, photo_url: "http://icons.iconarchive.com/icons/hektakun/pokemon/72/004-Charmander-icon.png")
Pokemon.create(name: :Charmeleon, primary_type: :Fire, photo_url: "http://icons.iconarchive.com/icons/hektakun/pokemon/72/005-Charmeleon-icon.png")
Pokemon.create(name: :Charizard, primary_type: :Fire, secondary_type: :Flying, photo_url: "http://icons.iconarchive.com/icons/hektakun/pokemon/72/006-Charizard-icon.png")
Pokemon.create(name: :Squirtle, primary_type: :Water, photo_url: "http://icons.iconarchive.com/icons/hektakun/pokemon/72/007-Squirtle-icon.png")
Pokemon.create(name: :Wartortle, primary_type: :Water, photo_url: "http://icons.iconarchive.com/icons/hektakun/pokemon/72/008-Wartortle-icon.png")
Pokemon.create(name: :Blastoise, primary_type: :Water, photo_url: "http://icons.iconarchive.com/icons/hektakun/pokemon/72/009-Blastoise-icon.png")


TeamMember.create(team_id: 1, pokemon_id: 1)
TeamMember.create(team_id: 1, pokemon_id: 4)
TeamMember.create(team_id: 1, pokemon_id: 7)

Team.create(user_id: 1)

TeamMember.create(team_id: 2, pokemon_id: 2)
TeamMember.create(team_id: 2, pokemon_id: 5)
TeamMember.create(team_id: 2, pokemon_id: 8)

Team.create(user_id: 1)

TeamMember.create(team_id: 3, pokemon_id: 3)
TeamMember.create(team_id: 3, pokemon_id: 6)
TeamMember.create(team_id: 3, pokemon_id: 9)

Team.create(user_id: 1)