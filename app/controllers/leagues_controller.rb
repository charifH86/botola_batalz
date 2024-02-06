class LeaguesController < ApplicationController
  def show
    #leaguesshow
    @league = League.find(params[:id])
    @team_players_titulaire = @league.teams.where(user: current_user).first.team_players.where(titulaire: true)
    @team_players_subs= @league.teams.where(user: current_user).first.team_players.where(titulaire: false)
   
    if Game.all.where(league: @league).count==0
      flash[:alert] = 'League has not started yet !'
      redirect_to(league_team_path( @league.id,params[:team_id]), notice: 'League has started, and matchups have been scheduled!')
    end 
  end

  def create
    # depends if you are the admin or not
    # we should create a button "start the league" for the admin and a button "join the league" for other users
    league = League.create!(name: params[:league][:name], user: current_user)
    redirect_to new_league_team_path(league)
  end

  def start_league
    league = League.find(params[:id])
    league.schedule_matchups
    # Redirect to a suitable path, maybe the league's show page
    redirect_to league_path(league), notice: 'League has started, and matchups have been scheduled!'
  end

  def new
    @league = League.new
    @leagues = League.where(user: current_user)
  end

  def startingsquad
    team_player_id = params[:team_player_id]
    t = TeamPlayer.find(team_player_id)
  
      if !t.titulaire
        team = t.team
        current_starters_count = team.team_players.where(titulaire: true).count
        if current_starters_count >= 11
          flash[:alert] = "Starting squad cannot have more than 11 players."
          redirect_to league_path(params[:id])
          return 
        end
      end
      if !t.titulaire
        if t.player.poste === "Goalkeeper" && ((TeamPlayer.where(team_id: t.team_id).pluck(:position)-["2","3","4","5","6","8","10","7","9","11"]).uniq-["0",nil]).size >= 1
          flash[:alert] = "Starting squad must have 1 goalkeeper."
          redirect_to league_path(params[:id])
          return
        elsif t.player.poste === "Defender" && ((TeamPlayer.where(team_id: t.team_id).pluck(:position)-["1","6","8","10","7","9","11"]).uniq-["0",nil]).size >= 4
          flash[:alert] = "Starting squad must have 4 defenders."
          redirect_to league_path(params[:id])
          return
        elsif t.player.poste === "Mittelfeld" && ((TeamPlayer.where(team_id: t.team_id).pluck(:position)-["1","2","3","4","5","7","9","11"]).uniq-["0",nil]).size >= 3
          flash[:alert] = "Starting squad must have 3 midfielders."
          redirect_to league_path(params[:id])
          return
        elsif t.player.poste === "Striker" &&  ((TeamPlayer.where(team_id: t.team_id).pluck(:position)-["1","2","3","4","5","6","8","10"]).uniq-["0",nil]).size >= 3
          flash[:alert] = "Starting squad must have 3 strikers."
          redirect_to league_path(params[:id])
          return
        end
      end  
    titulaire = !t.titulaire
    t.update(titulaire: titulaire)
    redirect_to league_path(params[:id]) 
  end


  def edit
  end

  def delete
  end

  def index
  end
end
