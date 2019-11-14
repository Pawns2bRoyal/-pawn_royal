# frozen_string_literal: true

class Game < ApplicationRecord
  after_create :initialize_board!
  
  has_many :pieces




  private

  def initialize_board!
    #Black Pieces
    (0..7).each do |i|
      Pawn.create(
        game_id: id,
        x_coordinate: i,
        y_coordinate: 1,
        color: "Black",
        kind: "Pawn",
        state: "test_hello_world"
        )
    end

    Rook.create(game_id: id, x_coordinate: 0, y_coordinate: 0, color: "Black", kind: "Rook")
    Knight.create(game_id: id, x_coordinate: 1, y_coordinate: 0, color: "Black", kind: "Knight")
    Bishop.create(game_id: id, x_coordinate: 2, y_coordinate: 0, color: "Black", kind: "Bishop")
    Queen.create(game_id: id, x_coordinate: 3, y_coordinate: 0, color: "Black", kind: "Queen")
    King.create(game_id: id, x_coordinate: 4, y_coordinate: 0, color: "Black", kind: "King")
    Bishop.create(game_id: id, x_coordinate: 5, y_coordinate: 0, color: "Black", kind: "Bishop")
    Knight.create(game_id: id, x_coordinate: 6, y_coordinate: 0, color: "Black", kind: "Knight")
    Rook.create(game_id: id, x_coordinate: 7, y_coordinate: 0, color: "Black", kind: "Rook")



    # White Pieces
    (0..7).each do |i|
      Pawn.create(
        game_id: id,
        x_coordinate: i,
        y_coordinate: 6,
        color: "White",
        kind: "Pawn"
        )
    end

    Rook.create(game_id: id, x_coordinate: 0, y_coordinate: 7, color: "White", kind: "Rook")
    Knight.create(game_id: id, x_coordinate: 1, y_coordinate: 7, color: "White", kind: "Knight")
    Bishop.create(game_id: id, x_coordinate: 2, y_coordinate: 7, color: "White", kind: "Bishop")
    Queen.create(game_id: id, x_coordinate: 3, y_coordinate: 7, color: "White", kind: "Queen")
    King.create(game_id: id, x_coordinate: 4, y_coordinate: 7, color: "White", kind: "King")
    Bishop.create(game_id: id, x_coordinate: 5, y_coordinate: 7, color: "White", kind: "Bishop")
    Knight.create(game_id: id, x_coordinate: 6, y_coordinate: 7, color: "White", kind: "Knight")
    Rook.create(game_id: id, x_coordinate: 7, y_coordinate: 7, color: "White", kind: "Rook")



  end



end
