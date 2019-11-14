class PiecesController < ApplicationController

  def update
		@piece = Piece.find(params[:id])

		@piece.update(piece_params)
		respond_to do |format|
			format.html {render :show }
			format.json {render json: @piece }
		end
	end
	private
	def piece_params
    params.permit(:x_coordinate, :y_coordinate, :game_id, :id)
  end
end
