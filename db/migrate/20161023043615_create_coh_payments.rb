class CreateCohPayments < ActiveRecord::Migration
  def change
    create_table :coh_payments do |t|
      t.integer :report_id
      t.integer :entity_id
      t.integer :entity_type_id
      t.integer :expenditure_category_type_id
      t.integer :candidate_id
      t.integer :travel_id
      t.date :date
      t.float :amount
      t.string :description
      t.date :date_created
      t.float :coh_payment_total

      t.timestamps null: false
    end
  end
end
