class TeamsController < ApplicationController
  def show
  end

  def create
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
end
