require "rest-client"
Player.destroy_all
teams = [{id:6603, name:'Wydad Athletic Club'}, {id:2068, name:'Raja Athletic Club'},
  {id:9099, name: 'FAR Rabat'}, {id:37176, name: 'Berkane'},
  {id:2073, name: 'Chabab Mohamedia'}, {id:79389, name: 'Union Touarga'},
  {id:6371, name: 'FUS Rabat'}, {id:74953, name: 'Renaissance Zemamra'},
  {id:22935, name: 'HUSA'}, {id:12721, name: 'Ittihad Tanger'},
  {id:79390, name: 'JS Soualem'}, {id:3282, name: 'Maghreb Fes'},
  {id:9100, name: 'Maghreb Tetouan'}, {id:37415, name: 'Youssoufia Berrechid'},
  {id:22941, name: 'Mouloudia Oujda'}, {id:22944, name: 'Olympique Safi'},
]
teams.each do |team|
url = "https://transfermarkt-api.vercel.app/clubs/#{team[:id]}/players"
p url
response = RestClient.get(url)
team_array = JSON.parse(response)

team_array["players"].each do |m|

Player.create!(first_name: m['name'],
  last_name: m['name'],
  price: m['marketValue'],
  position: m['position'],
  nationality: m['nationality'][0],
  height: m['height'],
  current_team: team[:name])
end
end
