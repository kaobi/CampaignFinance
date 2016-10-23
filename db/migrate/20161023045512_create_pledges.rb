class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.integer :report_id
      t.integer :transaction_id
      t.integer :entity_id
      t.integer :entity_type_id
      t.integer :travel_id
      t.integer :candidate_id
      t.date :date
      t.boolean :out_of_state_pac
      t.integer :pac_id
      t.float :amount
      t.string :description
      t.date :date_created
      t.float :pledge_total

      t.timestamps null: false
    end
  end
end
