def new_team(number, team)
  if params["pokemon"][number.to_s]
    TeamMember.create(team_id: team.id, pokemon_id: params["pokemon"][number.to_s])
  end
end