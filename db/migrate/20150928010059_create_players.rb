class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string  :first_name
      t.string  :last_name
      t.integer :position_id
      t.integer :nfl_team_id

      t.timestamps
    end
  end
end
