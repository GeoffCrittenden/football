class CreateRosterPositions < ActiveRecord::Migration
  def change
    create_table :roster_positions do |t|
      t.string  :name
      t.integer :position_id

      t.timestamps
    end
  end
end
