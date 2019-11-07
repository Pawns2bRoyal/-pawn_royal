# frozen_string_literal: true

class Game < ApplicationRecord
  after_create :initialize_board!
  
  has_many :pieces




  private

  def initialize_board!
    # Black Pieces
    # (0..7).each do |i|
    #   Pawn.create(
    #     game_id: id
    #     x_coordinate: i,
    #     y_coordinate: 1,
    #     color: "Black"
    #     )
    # end

    Rook.create(game_id: id, x_coordinate: 0, y_coordinate: 0, color: "Black")
    Knight.create(game_id: id, x_coordinate: 1, y_coordinate: 0, color: "Black")
    Bishop.create(game_id: id, x_coordinate: 2, y_coordinate: 0, color: "Black")
    Queen.create(game_id: id, x_coordinate: 3, y_coordinate: 0, color: "Black")
    King.create(game_id: id, x_coordinate: 4, y_coordinate: 0, color: "Black")
    Bishop.create(game_id: id, x_coordinate: 5, y_coordinate: 0, color: "Black")
    Knight.create(game_id: id, x_coordinate: 6, y_coordinate: 0, color: "Black")
    Rook.create(game_id: id, x_coordinate: 7, y_coordinate: 0, color: "Black")




    # White Pieces
    # (0..7).each do |i|
    #   Pawn.create(
    #     game_id: i-6,
    #     x_coordinate: i,
    #     y_coordinate: 6,
    #     color: "White"
    #     )
    # end

    Rook.create(game_id: id, x_coordinate: 0, y_coordinate: 7, color: "White")
    Knight.create(game_id: id, x_coordinate: 1, y_coordinate: 7, color: "White")
    Bishop.create(game_id: id, x_coordinate: 2, y_coordinate: 7, color: "White")
    Queen.create(game_id: id, x_coordinate: 3, y_coordinate: 7, color: "White")
    King.create(game_id: id, x_coordinate: 4, y_coordinate: 7, color: "White")
    Bishop.create(game_id: id, x_coordinate: 5, y_coordinate: 7, color: "White")
    Knight.create(game_id: id, x_coordinate: 6, y_coordinate: 7, color: "White")
    Rook.create(game_id: id, x_coordinate: 7, y_coordinate: 7, color: "White")



  end



end
