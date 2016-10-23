class CreateTreasurers < ActiveRecord::Migration
  def change
    create_table :treasurers do |t|
      t.integer :address_type_id
      t.integer :state_id
      t.string :prefix
      t.string :first_name
      t.string :mi
      t.string :alias
      t.string :last_name
      t.string :suffix
      t.boolean :change_address
      t.string :address
      t.integer :suite
      t.string :city
      t.integer :zip_code
      t.string :phone
      t.integer :extension

      t.timestamps null: false
    end
  end
end
