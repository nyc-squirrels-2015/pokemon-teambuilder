get '/menu' do
  @i = 0
  @teams = Team.all
  erb :menu
end

get '/pokemons' do
  @pokemons = Pokemon.all
  erb :all_pokemon
end