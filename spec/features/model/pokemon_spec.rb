require_relative '../../spec_helper'

class PokemonSpec
  describe 'pokemon' do
    let(:user) { User.create(name: 'ivan', email: "ivan@ivan.com", password: "123", password_confirmation: "123")}
    let(:pokemon) {Pokemon.create(name: :Bulbasaur, primary_type: :Grass, secondary_type: :Poison, photo_url: "http://icons.iconarchive.com/icons/hektakun/pokemon/72/001-Bulbasaur-icon.png")}
    let(:team) {Team.create(user_id: user.id)}
    let(:team_member) {TeamMember.create(team_id: team.id, pokemon_id: pokemon.id)}

    before do
      user
      team
      pokemon
      team_member
    end

    it 'should respond to teams' do
      expect(pokemon.teams.first).to be_a Team
    end
  end
end