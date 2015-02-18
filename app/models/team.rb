class Team < ActiveRecord::Base
  belongs_to :user
  has_many :team_members
  has_many :pokemon, through: :team_members
end
