class GamesController < ApplicationController

  def show

  end

  def index
    @game = Game.create
    @pieces = Piece.all
  end

  def update
		@piece = Piece.find

		@piece.update
		respind_to do |format|
			format.html 
			format.json 
    end
  end
  

end
