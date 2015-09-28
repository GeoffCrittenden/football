class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :full_name
      t.string :short_name

      t.timestamps
    end
  end
end
