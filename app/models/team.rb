class Team < ApplicationRecord
  belongs_to :league
  belongs_to :user
  has_many :team_players
  has_many :players, through: :team_players
  has_one_attached :photo
  has_many :visitor_games, foreign_key: :visitorteam_id, class_name: "Game"
  has_many :local_games, foreign_key: :localteam_id, class_name: "Game"
end
