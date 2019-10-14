# frozen_string_literal: true

class Piece < ApplicationRecord
  belongs_to :game
  self.inheritance_column = :type

  def self.types
    %w[Pawn Rook Knight Bishop Queen King]
  end
end
