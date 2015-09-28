class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.integer :year, :primary_key

      t.timestamps
    end
  end
end
