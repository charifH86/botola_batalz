class League < ApplicationRecord
  belongs_to :user
  has_many :teams

  def schedule_matchups
    teams = self.teams
    matchups = []

    teams.each do |team1|
      teams.each do |team2|
        next if team1 == team2
        2.times { matchups << [team1.id, team2.id] } # how to test this !!!
      end
    end

    last_date = Date.today # to be confirmed (real botola pro calendar)
    scheduled_games = matchups.map do |local_id, visitor_id|
      last_date = next_game_date(last_date)
      { localteam_id: local_id, visitorteam_id: visitor_id, date: last_date, league_id: self.id, status: 'pending', endgame: 'draw', score: '0-0' }
    end

    scheduled_games.each do |game_data|
      Game.create!(game_data)
    end
  end

  private

  def next_game_date(last_date)
    last_date + 7.days
  end
end
