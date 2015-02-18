class Pokemon < ActiveRecord::Base
  has_many :team_members
  has_many :teams, through: :team_members
  validates :name, presence: true
  validates :primary_type, presence: true
end
