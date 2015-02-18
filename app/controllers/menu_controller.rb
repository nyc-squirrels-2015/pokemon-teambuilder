get '/menu' do
  erb :menu
end

get '/pokemons' do
  @pokemons = Pokemon.all
  erb :all_pokemon
end