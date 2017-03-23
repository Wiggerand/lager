class CreateTires < ActiveRecord::Migration[5.0]
  def change
    create_table :tires do |t|
      t.string :producer
      t.string :tiresize
      t.integer :dotweek
      t.integer :dotyear
      t.boolean :storage1
      t.boolean :storage2
      t.string :rack
      t.string :case
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
