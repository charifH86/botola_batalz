class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
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
      redirect_to league_path(@team.league.id)
    end
  end

  def new
    @league = League.find(params[:league_id])
    @team = Team.new
  end

  def update
  end

  def edit
  end

  def delete
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
    params.require(:team).permit(:name)
  end
end
