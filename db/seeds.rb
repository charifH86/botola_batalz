# require "rest-client"
# Team.destroy_all
# League.destroy_all
# User.destroy_all
# Player.destroy_all
# p "Destroyed Team / League /  User / Player ✅"

# teams = [
#   {
#     id: 6603,
#     name: "Wydad Casablanca"
#   },
#   {
#     id: 2068,
#     name: "Raja Club Athletic"
#   },
#   {
#     id: 9099,
#     name: "FAR Rabat"
#   },
#   {
#     id: 37176,
#     name: "Renaissance de Berkane"
#   },
#   {
#     id: 6371,
#     name: "FUS Rabat"
#   },
#   {
#     id: 3282,
#     name: "MAS Fes"
#   },
#   {
#     id: 12721,
#     name: "Ittihad Tanger"
#   },
#   {
#     id: 22944,
#     name: "Olympique Safi"
#   },
#   {
#     id: 22935,
#     name: "Hassania d'Agadir"
#   },
#   {
#     id: 79389,
#     name: "Union Touarga Sportif"
#   },
#   {
#     id: 9100,
#     name: "Moghreb Tétouan"
#   },
#   {
#     id: 37415,
#     name: "Club Athletic Youssoufia Berrechid"
#   },
#   {
#     id: 2073,
#     name: "SC Chabab Mohammedia"
#   },
#   {
#     id: 74953,
#     name: "Renaissance Zemamra"
#   },
#   {
#     id: 79390,
#     name: "Jeunesse Sportive de Soualem"
#   },
#   {
#     id: 22941,
#     name: "Mouloudia d'Oujda"
#   }
# ]

#   def convert_value_to_integer(value_string)
#     return 0 unless value_string.is_a?(String) && value_string.match?(/\d/)

#     if value_string.include?('m')
#       (value_string.gsub(/[€m]/, '').to_f * 1_000_000).to_i
#     elsif value_string.include?('k')
#       (value_string.gsub(/[€k]/, '').to_f * 1_000).to_i
#     else
#       value_string.gsub('€', '').to_i
#     end
#   end

# p "Creating users ⚽️"
# User.create(email: 'user1@gmail.com', password: '123456')

# p "Creating leagues ⚽️"
# League.create(name: 'botola pro', budget: 1000000, user_id: User.first.id)

# p "Creating Teams ⚽️"
# Team.create(name: 'Rapid Casa', league_id: League.first.id)

# teams.each do |team|
#   url = "https://transfermarkt-api.vercel.app/clubs/#{team[:id]}/players"
#   response = RestClient.get(url)
#   team_array = JSON.parse(response)
#   p "Just called api for : #{team[:name]} ✅ "

#   team_array["players"].each do |player|
#     tmp_player = Player.create!(first_name: player['name'],
#                                 last_name: player['name'],
#                                 price: convert_value_to_integer(player['marketValue']),
#                                 position: player['position'],
#                                 nationality: player['nationality'][0],
#                                 height: player['height'],
#                                 current_team: team[:name],
#                                 image_url: player['id']
#                               )
#       p "Creating player #{tmp_player.first_name} success ✅"
#     end
#     p  "---------------------------------------"
#     p "All players added for #{team[:name]} ✅"
#     p  "---------------------------------------"
# end

# # We take only Player that still have the id inside image_url
# Player.where("length(image_url) < 20").each do |player|
#     profile_response = RestClient.get("https://transfermarkt-api.vercel.app/players/#{player.image_url}/profile")
#     profile = JSON.parse(profile_response)
#     player.update!(image_url: profile['imageURL']  == nil ? "https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1" : profile['imageURL'] )
#     p "profile image set : #{ player.image_url} - player :#{player.first_name}"
# end


# p "Seeding finished 🌱"
Player.all.each do |player|
  if player.position == "Goalkeeper"
    player.update!(poste: "Goalkeeper")
  end
  if player.position == "Right-Back" || player.position == "Centre-Back" || player.position == "Left-Back" || player.position == "Defender"
    player.update!(poste: "Defender")
  end
  if player.position == "Defensive Midfield" || player.position == "Central Midfield" || player.position == "Attacking Midfield" || player.position == "Right Midfield" || player.position == "Mittelfeld"
    player.update!(poste: "Mittelfeld")
  end
  if player.position == "Left Winger" || player.position == "Right Winger" || player.position == "Centre-Forward" || player.position == "Second Striker" || player.position == "Striker"
    player.update!(poste: "Striker")
  end
end
