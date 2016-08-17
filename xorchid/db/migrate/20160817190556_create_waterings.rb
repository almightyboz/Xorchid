class CreateWaterings < ActiveRecord::Migration
  def change
    create_table :waterings do |t|
      t.references :plant
      t.date :water_date

      t.timestamps null: false
    end
  end
end
