namespace :game do
  desc "TODO"
  task update_all: :environment do
    League.all.each do |league|
      league.teams.each do |team|
        players = team.players
        score = 0
        players.each do |player| 
          profile_response = RestClient.get("https://transfermarkt-api.vercel.app/players/#{player.tm_id}/stats")
          stats = JSON.parse(profile_response)
          p stats["stats"]
          if stats["stats"][0]["goals"] 
            player.past_goal = player.new_goal
            player.save!
            player.new_goal = stats["stats"][0]["goals"]
            player.save!
      
          end
          team_player = TeamPlayer.where(player: player,team: team).first
          team_player.score = player.new_goal.to_i - player.past_goal.to_i
          team_player.save!
        end
        team_score = TeamPlayer.where(team: team).pluck(:score).sum

        games_as_v = Game.where(visitorteam_id: team.id, date: Date.today ).first
        games_as_l = Game.where(localteam_id: team.id, date: Date.today ).first

        games_as_v.update(score_v: team_score) unless(games_as_v.blank?)
        games_as_l.update(score_l: team_score) unless(games_as_l.blank?)
      end
    end
  end
end