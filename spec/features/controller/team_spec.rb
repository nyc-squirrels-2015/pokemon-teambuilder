require_relative '../../spec_helper'

class TeamSpec
  describe 'team routes' do
    let(:user) {User.create(name: :Ivan, email: "ivan@gmail.com", password: "123", password_confirmation: "123")}
    let(:pokemon) {Pokemon.create(name: :Bulbasaur, primary_type: :Grass, secondary_type: :Poison, photo_url: "http://icons.iconarchive.com/icons/hektakun/pokemon/72/001-Bulbasaur-icon.png")}
    let(:team) {Team.create(user_id: 1)}
    let(:team_member) {TeamMember.create(team_id: 1, pokemon_id: 1)}

    before do
      user
      pokemon
      team
      team_member
    end


  end
end