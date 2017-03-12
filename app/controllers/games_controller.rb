class GamesController < ApplicationController

  # GET /players
  # GET /players.json
  def index
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @games = Game.search params[:id], params[:region]
  end

  # GET /players/new
  def new
  end

  # GET /players/1/edit
  def edit
  end

end
