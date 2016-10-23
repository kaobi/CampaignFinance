class CreateMonetaryContributions < ActiveRecord::Migration
  def change
    create_table :monetary_contributions do |t|
      t.integer :report_id
      t.integer :entity_id
      t.integer :entity_type_id
      t.integer :transaction_id
      t.integer :candiate_id
      t.integer :pac_id
      t.date :date
      t.boolean :out_of_state_pac
      t.float :amount
      t.string :description
      t.date :date_created
      t.float :mc_total

      t.timestamps null: false
    end
  end
end
