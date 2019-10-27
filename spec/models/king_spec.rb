require 'rails_helper'

RSpec.describe King, type: :model do
    let(:game) { Game.new }
    let(:board) { Board.new(true) }
    let(:king) { King.new([4, 4], true) }
    let(:enemy_king) { King.new([0, 0], false) }
    before do
        game.board = board
        board.positions[0][0] = enemy_king
        board.positions[4][4] = king
    end

  
end
