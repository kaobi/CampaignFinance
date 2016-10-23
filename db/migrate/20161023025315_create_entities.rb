class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.integer :entity_type_id
      t.integer :prefix_id
      t.integer :state_id
      t.string :first_name
      t.string :mi
      t.string :last_name
      t.string :suffix
      t.string :address
      t.string :secondary_address
      t.integer :suite
      t.string :city
      t.integer :zip_code
      t.string :occupation_org
      t.string :company
      t.date :date_created
      t.boolean :change_address

      t.timestamps null: false
    end
  end
end
