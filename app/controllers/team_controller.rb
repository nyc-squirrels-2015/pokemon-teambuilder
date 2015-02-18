get '/teams' do
  @i = 0
  @teams = Team.all
  if current_user.id == session[:user_id]
    erb :'team/teams'
  end
end

get '/teams/new' do
  @pokemon = Pokemon.all
  if current_user.id == session[:user_id]
    erb :'team/new_team', layout: false
  end
end

post '/teams/new' do
  @i = Team.all.count + 1
  team = Team.create(user_id: session[:user_id])
  p params
  6.times do |i|
    i + 1
    new_team(i, team)
  end
  erb :'team/_append_new_team', locals: {team: team}, layout: false
  # redirect "/teams/#{team.id}"
end

get '/teams/:id/edit' do
  @i = 0
  @pokemon = Pokemon.all
  @team = Team.find(params[:id])
  if current_user.id == session[:user_id]
    erb :'team/edit_team'
  end
end

put '/teams/:id' do
  counter = 0
  team = Team.find(params[:id])
  team.team_members.each do |t_member|
    counter += 1
    t_member.update(pokemon_id: params[("pokemon" + counter.to_s).to_sym])
  end



  redirect "/teams/#{params[:id]}"
end

get '/teams/:id' do
  @team = Team.find(params[:id])
  if current_user.id == session[:user_id]
    erb :'team/individual_team'
  end
end

delete '/teams/:id' do
  TeamMember.delete_all(team_id: params[:id])
  Team.delete(params[:id])
  redirect '/menu'
end
