require 'rails_helper'

RSpec.describe Rook, type: :model do

        describe "#valid_move?" do
        it "should return true to move one square forward" do 
            game = Game.create
            rook = FactoryBot.create :rook, x_coordinate: 5, y_coordinate: 5, game_id: game.game_id
            expect(rook.valid_move?(5,6)).to eq(true)
        end
    end

  
end
