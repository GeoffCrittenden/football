class CreateRosterPositions < ActiveRecord::Migration
  def change
    create_table :roster_positions do |t|

      t.timestamps
    end
  end
end
