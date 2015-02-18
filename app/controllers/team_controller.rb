get '/teams' do
  @teams = Team.all
  erb :'team/teams'
end

get 'teams/:id' do

end