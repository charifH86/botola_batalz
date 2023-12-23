class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
    @league = @team.league
    @players = Player.all

    if params[:first_name].present?
      @players = @players.where("first_name ILIKE ?", "%#{params[:first_name]}%")
    end

    if params[:current_team].present?
      @players = @players.where("current_team ILIKE ?", "%#{params[:current_team]}%")
    end

    if params[:min_price].present?
      min_price = convert_value_to_integer(params[:min_price])
      @players = @players.where("price >= ?", min_price)
    end

    if params[:max_price].present?
      max_price = convert_value_to_integer(params[:max_price])
      @players = @players.where("price <= ?", max_price)
    end
  end

  def create
    @team = Team.new(team_params)
    @team.league_id = params[:league_id]
    @team.valo = 10000000
    if @team.save! 
      redirect_to team_path(@team)
    end
  end

  def new
    @league = League.find(params[:league_id])
    @team = Team.new
  end

  def update
    @team = Team.find(params[:id])
    @league = @team.league



    if params[:player_id].present?
      player = Player.find(params[:player_id])

      if @league.budget >= player.price
        @team_player = TeamPlayer.new(player_id: params[:player_id], team_id: @team.id)
        @team.valo = 0 if @team.valo.nil?
        @team.valo += player.price
        @league.budget -= player.price

        if @team.save! && @league.save! && @team_player.save!
          redirect_to team_path(@team.id)
        else
          render json: { success: false, message: "Error saving team or league" }, status: :unprocessable_entity
        end
      else
        render json: { success: false, message: "Sorry, this player is too expensive" }
      end
    else
      render json: { success: false, message: "No player ID provided" }
    end
  rescue => e
    render json: { success: false, error: e.message }, status: :internal_server_error
  end


  def edit
  end

  def remove_player
    t = TeamPlayer.find(params[:id])
    t.team.valo -= t.player.price
    t.team.league.budget += t.player.price
    if t.team.save! && t.team.league.save!
      t.destroy
      redirect_to team_path(t.team.id)
    end
  end

  private

  def convert_value_to_integer(value_string)
    return 0 unless value_string.is_a?(String) && value_string.match?(/\d/)

    if value_string.include?('m')
      (value_string.gsub(/[€m]/, '').to_f * 1_000_000).to_i
    elsif value_string.include?('k')
      (value_string.gsub(/[€k]/, '').to_f * 1_000).to_i
    else
      value_string.gsub('€', '').to_i
    end
  end
  def team_params
    params.require(:team).permit(:name,:photo)
  end
end
