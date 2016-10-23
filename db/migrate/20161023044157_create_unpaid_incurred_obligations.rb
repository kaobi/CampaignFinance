class CreateUnpaidIncurredObligations < ActiveRecord::Migration
  def change
    create_table :unpaid_incurred_obligations do |t|
      t.integer :report_id
      t.integer :entity_id
      t.integer :entity_type_id
      t.integer :transaction_id
      t.integer :category_id
      t.integer :candidate_id
      t.integer :travel_id
      t.integer :expenditure_type_id
      t.string :description
      t.date :date
      t.float :amount
      t.date :date_created
      t.float :ul_obligation_total

      t.timestamps null: false
    end
  end
end
