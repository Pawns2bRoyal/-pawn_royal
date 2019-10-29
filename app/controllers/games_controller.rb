class GamesController < ApplicationController

  def show
    @pieces = Piece.all
  end

  def index
  end
  
end
