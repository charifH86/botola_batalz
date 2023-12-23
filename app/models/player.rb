class Player < ApplicationRecord
  scope :by_name, ->(name) { where("name LIKE ?", "%#{name}%") }
  has_many :team_players
  has_many :teams, through: :team_player
end
