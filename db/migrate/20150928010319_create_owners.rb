class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :callsign
      t.string :espn_nickname

      t.timestamps
    end
  end
end
