class TeamPlayer < ApplicationRecord
  belongs_to :team
  belongs_to :player
  after_save :set_position, if: -> { saved_change_to_titulaire? }

  def set_position
    player_poste = self.player.poste
    
    if self.titulaire?

    position = case player_poste
               when "Goalkeeper"
                 "1"
               when "Defender"
                 (["2", "3", "4", "5"]-(TeamPlayer.where(team_id: self.team_id).pluck(:position)-["1","6","8","10","7","9","11"])).sample
               when "Mittelfield"
                 (["6", "8", "10"]-(TeamPlayer.where(team_id: self.team_id).pluck(:position)-["1","2","3","4","5","7","9","11"])).sample
               else
                 (["7", "9", "11"]-(TeamPlayer.where(team_id: self.team_id).pluck(:position)-["1","2","3","4","5","6","8","10"])).sample
               end
    else
      position = "0"
    end 
      self.update(position: position)
    end
  
end
