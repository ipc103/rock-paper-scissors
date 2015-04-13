class RpsGamesController < ApplicationController

  def play
    @game = RpsGame.new(params[:play])
    respond_to do |f|
      f.html
      f.js
    end
  end
end
