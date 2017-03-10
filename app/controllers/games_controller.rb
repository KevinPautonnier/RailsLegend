class GamesController < ApplicationController

  # GET /players
  # GET /players.json
  def index
    @game = Game.search params[:region], params[:id]
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
  end

  # GET /players/1/edit
  def edit
  end

end
