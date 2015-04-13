class RpsGamesController < ApplicationController

  def play
    @game = RpsGame.new(params[:play])
  end
end
