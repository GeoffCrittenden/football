class CreatePlayerGames < ActiveRecord::Migration
  def change
    create_table :player_games do |t|

      t.timestamps
    end
  end
end
