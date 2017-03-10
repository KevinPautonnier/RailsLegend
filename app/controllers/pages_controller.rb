class PagesController < ApplicationController
  def index
  end

  def new
    @player = Player.new "name", "region"
  end

  def create
    @player = Player.new(params[:summonner_name], params[:region])
    if @player.save
      redirect_to @player
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end
end