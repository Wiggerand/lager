class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :vehicle
      t.string :registration
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
