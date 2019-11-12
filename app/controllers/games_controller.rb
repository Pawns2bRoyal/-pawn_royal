class GamesController < ApplicationController

  def create
    #will trigger game creation in DB
    #will redirect to show
  end

  def new
    #provide info/details for new game (name, email, etc)
    #reder THIS 
  end


  def index    #change to show
    @game = Game.create
    @pieces = Piece.all
  end

  def update
		@piece = Piece.find

		@piece.update
		respond_to do |format|
			format.html 
			format.json 
    end
  end
  

end
