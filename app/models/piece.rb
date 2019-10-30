# frozen_string_literal: true

class Piece < ApplicationRecord
  belongs_to :game
  self.inheritance_column = :type

  def self.types
    %w[Pawn Rook Knight Bishop Queen King]
  end

  def is_obstructed_horizontal?
    @pieces = Piece.all
    @current_piece = piece.new

    @pieces.each do |piece|
      7.times do |x|
        if piece.y_coordinate == y_coordinate && piece.x_coordinate == x 
          if piece.id != id
            return false
          end
        end
      end
    end
    return true
  end

  def is_obstructed_vertical?
    @pieces.each do |piece|
      7.times do |y|
        if piece.x_coordinate == x_coordinate && piece.y_coordinate == y_coordinate
          if piece.id != id 
            return false
          end
        end
      end
    end
    return true
  end

  def is_obstructed_diagonal?
    @pieces.each do |piece|
      int x = x_coordinate + 1;
      int y = y_coordinate + 1;

      while x < 8 && y < 8
        if piece.x_coordinate == x && piece.y_coordinate == y
          return false
        end
        x += 1
        y += 1
      end
      
      x = x_coordinate - 1;
      y = y_coordinate - 1;
      while x >= 0 && y >= 0
        if piece.x_coordinate == x && piece.y_coordinate == y
          return false
        end
        x -= 1
        y -= 1
      end
    end
  end

end
