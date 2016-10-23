class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.integer :report_id
      t.integer :transaction_id
      t.integer :entity_id
      t.integer :entity_type_id
      t.integer :candidate_id
      t.date :date
      t.boolean :out_of_state_pac
      t.integer :pac_id
      t.float :amount
      t.float :interest_rate
      t.date :maturity_date
      t.string :collateral_description
      t.float :personal_fund
      t.float :amount_guaranteed
      t.date :date_created
      t.float :loan_total

      t.timestamps null: false
    end
  end
end
