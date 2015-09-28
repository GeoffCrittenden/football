class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :season_id
      t.string  :name

      t.timestamps
    end
  end
end
