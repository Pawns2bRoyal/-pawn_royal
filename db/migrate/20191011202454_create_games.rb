class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string "name"
      t.string "state"
      t.integer "black_player_id"
      t.integer "white_player_id"
      t.integer "winning_player_id"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.boolean "check_mate"
      t.timestamps
    end
  end
end
