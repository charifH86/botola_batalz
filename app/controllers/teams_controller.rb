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
