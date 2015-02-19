get '/menu' do
  @i = 0
  @teams = Team.all
  if current_user
    erb :menu
  end
end

get '/pokemons' do
  @pokemons = Pokemon.all
  if current_user
    erb :all_pokemon
  end
end