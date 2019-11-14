class GamesController < ApplicationController

  def create
    @game = Game.create(game_params)
    redirect_to @game
    #will trigger game creation in DB
    #will redirect to show
  end

  def new
    @game = Game.new
    #provide info/details for new game (name, email, etc)
    #reder THIS 
  end


  def index
  end

  def show   #change to show
    @game = Game.find(params[:id])
  end

  def update

    @piece = Piece.find(params[:piece_id])
  
		
  end
  
  private

  def game_params
    params.require(:game).permit(:name)
  end

  
end
