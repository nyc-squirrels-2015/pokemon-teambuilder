get '/teams' do
  @teams = Team.all
  erb :'team/teams'
end

get '/teams/:id' do
  @team = Team.find(params[:id])
  erb :'team/individual_team'
end