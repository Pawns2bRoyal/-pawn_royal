class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.integer "x_coordinate"
      t.integer "y_coordinate"
      t.string "color"
      t.integer "player_id"
      t.integer "game_id"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string "type"
      t.string "state"
      t.string "symbol"
      t.timestamps
    end
  end
end
