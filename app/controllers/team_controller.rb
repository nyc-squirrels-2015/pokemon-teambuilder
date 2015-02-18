get '/teams' do
  @teams = Team.all
  erb :'team/teams'
end

get '/teams/new' do
  erb :'team/new_team'
end

get '/teams/:id' do
  @team = Team.find(params[:id])
  erb :'team/individual_team'
end
