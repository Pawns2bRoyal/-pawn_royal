class PiecesController < ApplicationController


	def update
		@piece = Piece.find(params[:id])

		@piece.update(piece_params)
		respind_to do |format|
			format.html 
			format.json 
		end
	end
end
