class League < ApplicationRecord
  belongs_to :user
  has_many :teams
  has_many :games

  def schedule_matchups
    teams = self.teams.pluck(:id)
    matchups = []

    matchups = generate_pairs(teams)

    p matchups

    last_date = Date.today # to be confirmed (real botola pro calendar)
    scheduled_games = matchups.map do |match_day|
      
      match_day.each do |match_day| 
        team1 = match_day[0]
        team2 = match_day[1]
      
        Game.create! localteam_id: team1, visitorteam_id: team2, date: last_date, league_id: self.id, status: 'pending', endgame: 'draw', score_v: "0", score_l: "0"
      end

      last_date = next_game_date(last_date)
    end

  end

  private

  def generate_pairs(arr, last_element = -1)
    return [[]] if arr.empty?
    return [] if arr.length < 2
  
    pairs = []
    arr.each_with_index do |current, i|
        next if current == last_element
  
        (i + 1).upto(arr.length - 1) do |j|
            next if arr[j] == last_element
  
            # Exclude the current pair elements and generate new pairs
            remaining_elements = arr.each_with_index.map { |x, k| x if k != i && k != j }.compact
            sub_pairs = generate_pairs(remaining_elements, current)
  
            sub_pairs.each do |sub_pair|
                pairs << [[current, arr[j]]] + sub_pair
            end
        end
    end
  
    pairs
  end
  

  def next_game_date(last_date)
    last_date + 7.days
  end
end

