class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
    @players = Player.all

    if params[:first_name].present?
      @players = @players.where("first_name iLIKE ?", "%#{params[:first_name]}%")
    end

    if params[:current_team].present?
      @players = @players.where("current_team iLIKE ?", "%#{params[:current_team]}%")
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
  end

  def new
  end

  def update
  end

  def edit
  end

  def delete
  end
end
