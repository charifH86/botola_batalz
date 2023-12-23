class Team < ApplicationRecord
  belongs_to :league

  has_many :team_players
  has_many :players, through: :team_players
  has_one_attached :photo

end
