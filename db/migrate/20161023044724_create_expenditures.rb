class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
      t.integer :report_id
      t.integer :entity_id
      t.integer :entity_type_id
      t.integer :transaction_id
      t.integer :expenditure_type_id
      t.integer :payment_method_id
      t.integer :travel_id
      t.integer :candidate_id
      t.string :purpose
      t.date :date
      t.float :amount
      t.string :category
      t.date :date_created
      t.boolean :living_expense
      t.boolean :reimbursement
      t.float :expenditure_total

      t.timestamps null: false
    end
  end
end
