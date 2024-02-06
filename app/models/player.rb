class Player < ApplicationRecord
  scope :by_name, ->(name) { where("name LIKE ?", "%#{name}%") }
  has_many :team_players
  has_many :teams, through: :team_players

  def short_position
    return "FW" if self.poste === "Striker"
    return "GK" if self.poste === "Goalkeeper"
    return "DEF" if self.poste === "Defender"
    return "MIL" if self.poste === "Mittelfeld"
  end
end
