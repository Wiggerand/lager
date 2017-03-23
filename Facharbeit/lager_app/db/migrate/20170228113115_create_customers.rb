class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :plz
      t.string :tel
      t.string :email
      t.boolean :dse

      t.timestamps
    end
  end
end
