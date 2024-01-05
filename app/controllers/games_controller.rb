class GamesController < ApplicationController
  def show
    @league = League.find(params[:id])
    @games = @league.games
  end
end
