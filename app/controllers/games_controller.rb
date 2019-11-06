class GamesController < ApplicationController

  def show

  end

  def index
    @pieces = Piece.all
  end
  
end
