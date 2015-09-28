class CreateNflTeams < ActiveRecord::Migration
  def change
    create_table :nfl_teams do |t|

      t.timestamps
    end
  end
end
