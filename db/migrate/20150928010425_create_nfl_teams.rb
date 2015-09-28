class CreateNflTeams < ActiveRecord::Migration
  def change
    create_table :nfl_teams do |t|
      t.string :name
      t.string :location
      t.string :state
      t.string :abbreviation

      t.timestamps
    end
  end
end
