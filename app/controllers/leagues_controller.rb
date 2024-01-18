class LeaguesController < ApplicationController
  def show
    #leaguesshow
    @league = League.find(params[:id])
    @team_players_titulaire = @league.teams.where(user: current_user).first.team_players.where(titulaire: true)
    @team_players_subs= @league.teams.where(user: current_user).first.team_players.where(titulaire: false)
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
    redirect_to leagues_path(league), notice: 'League has started, and matchups have been scheduled!'
  end

  def new
    @league = League.new
    @leagues = League.where(user: current_user)
  end

  def startingsquad
    team_player_id = params[:team_player_id]
    t = TeamPlayer.find(team_player_id)
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
