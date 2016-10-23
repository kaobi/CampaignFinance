class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.integer :state_id
      t.integer :prefix_id
      t.string :first_name
      t.string :mi
      t.string :alias
      t.string :last_name
      t.string :suffix
      t.boolean :change_address
      t.string :address
      t.integer :appt_suite_num
      t.string :city
      t.integer :zip_code
      t.string :phone
      t.integer :extension

      t.timestamps null: false
    end
  end
end
