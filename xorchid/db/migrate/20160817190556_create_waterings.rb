class CreateWaterings < ActiveRecord::Migration
  def change
    create_table :waterings do |t|
      t.references :plant
      t.date :date

      t.timestamps null: false
    end
  end
end
