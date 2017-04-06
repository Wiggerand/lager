class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :dear
      t.string :firstname
      t.string :lastname
      t.string :street
      t.string :city
      t.string :plz
      t.string :tel
      t.string :email
      t.boolean :privacypolicy

      t.timestamps
    end
  end
end
