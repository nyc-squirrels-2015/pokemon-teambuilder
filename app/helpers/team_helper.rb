def new_team(number, team)
  select = ("pokemon" + number.to_s).to_sym
  if params[select]
    TeamMember.create(team_id: team.id, pokemon_id: params[select])
  end
end

# def update_team(number, team)