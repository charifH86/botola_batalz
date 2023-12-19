require "rest-client"
Team.destroy_all
League.destroy_all
User.destroy_all
Player.destroy_all

User.create(email: 'user1@gmail.com', password: '123456')

League.create(name: 'botola pro', budget: 1000000, user_id: User.first.id)
Team.create(name: 'Rapid Casa', league_id: League.first.id)

teams = [
  {
    id: 6603,
    name: "Wydad Casablanca"
  },
  {
    id: 2068,
    name: "Raja Club Athletic"
  },
  {
    id: 9099,
    name: "FAR Rabat"
  },
  {
    id: 37176,
    name: "Renaissance de Berkane"
  },
  {
    id: 6371,
    name: "FUS Rabat"
  },
  {
    id: 3282,
    name: "MAS Fes"
  },
  {
    id: 12721,
    name: "Ittihad Tanger"
  },
  {
    id: 22944,
    name: "Olympique Safi"
  },
  {
    id: 22935,
    name: "Hassania d'Agadir"
  },
  {
    id: 79389,
    name: "Union Touarga Sportif"
  },
  {
    id: 9100,
    name: "Moghreb Tétouan"
  },
  {
    id: 37415,
    name: "Club Athletic Youssoufia Berrechid"
  },
  {
    id: 2073,
    name: "SC Chabab Mohammedia"
  },
  {
    id: 74953,
    name: "Renaissance Zemamra"
  },
  {
    id: 79390,
    name: "Jeunesse Sportive de Soualem"
  },
  {
    id: 22941,
    name: "Mouloudia d'Oujda"
  }
]

  def convert_value_to_integer(value_string)
    return 0 unless value_string.is_a?(String) && !value_string.empty?

    if value_string.include?('m')
      (value_string.gsub('€', '').gsub('m', '').to_f * 1_000_000).to_i
    elsif value_string.include?('k')
      (value_string.gsub('€', '').gsub('k', '').to_f * 1_000).to_i
    else
      value_string.gsub('€', '').to_i
    end
  end

teams.each do |team|
url = "https://transfermarkt-api.vercel.app/clubs/#{team[:id]}/players"
p url
response = RestClient.get(url)
team_array = JSON.parse(response)

team_array["players"].each do |player|

Player.create!(first_name: player['name'],
  last_name: player['name'],
  price: player['marketValue'],
  position: player['position'],
  nationality: player['nationality'][0],
  height: player['height'],
  current_team: team[:name])
end
end
