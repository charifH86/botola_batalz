class TeamPlayer < ApplicationRecord
  belongs_to :team
  belongs_to :player
  after_save :set_position, if: -> { saved_change_to_titulaire? }

  # validate :validate_team_composition, on: :update

  def set_position
    player_poste = self.player.poste
    
    if self.titulaire?

    position = case player_poste
               when "Goalkeeper"
                 "1"
               when "Defender"
                 (["2", "3", "4", "5"]-(TeamPlayer.where(team_id: self.team_id).pluck(:position)-["1","6","8","10","7","9","11"])).sample
               when "Mittelfeld"
                 (["6", "8", "10"]-(TeamPlayer.where(team_id: self.team_id).pluck(:position)-["1","2","3","4","5","7","9","11"])).sample
                when "Striker"
                 (["7", "9", "11"]-(TeamPlayer.where(team_id: self.team_id).pluck(:position)-["1","2","3","4","5","6","8","10"])).sample
               end
    else
      position = "0"
    end 
      self.update(position: position)
    end

  private

  # def validate_team_composition
  #   return unless titulaire?

  #   goalkeepers = team.team_players.where(player: Player.where(poste: "Goalkeeper")).count
  #   defenders = team.team_players.where(player: Player.where(poste: "Defender")).count
  #   midfielders = team.team_players.where(player: Player.where(poste: "Mittelfield")).count
  #   strikers = team.team_players.where.not(player: Player.where(poste: ["Goalkeeper", "Defender", "Mittelfield"])).count

  #   errors.add(:base, "There must be at least 1 goalkeeper") if goalkeepers > 1
  #   errors.add(:base, "There must be at least 4 defenders") if defenders > 4
  #   errors.add(:base, "There must be at least 3 midfielders") if midfielders > 3
  #   errors.add(:base, "There must be at least 3 strikers") if strikers > 3
  # end
  
end
