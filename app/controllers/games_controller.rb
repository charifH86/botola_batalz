class GamesController < ApplicationController
  def show
    @league = League.find(params[:id])
    @games = @league.games
  end

  def ranking
    players = current_user.teams.first.players
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
    end
  end
end
