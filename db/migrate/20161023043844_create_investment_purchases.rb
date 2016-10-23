class CreateInvestmentPurchases < ActiveRecord::Migration
  def change
    create_table :investment_purchases do |t|
      t.integer :report_id
      t.integer :entity_id
      t.integer :entity_type_id
      t.integer :expenditure_type_id
      t.integer :transaction_id
      t.integer :candidate_id
      t.date :date
      t.float :amount
      t.string :description
      t.date :date_created

      t.timestamps null: false
    end
  end
end
