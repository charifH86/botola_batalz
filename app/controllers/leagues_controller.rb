class LeaguesController < ApplicationController
  def show
  end

  def create
    league = League.create!(name: params[:league][:name],user:current_user,balance: "1000000",budget:"1000000")
    redirect_to new_league_team_path(league)
  end

  def new
    @league = League.new
  end

  def update
  end

  def edit
  end

  def delete
  end

  def index
  end
end
