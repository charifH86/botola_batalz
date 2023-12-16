class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
    @players = Player.all
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
