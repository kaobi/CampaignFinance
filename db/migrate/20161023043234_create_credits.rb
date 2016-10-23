class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.integer :report_id
      t.integer :transaction_id
      t.integer :entity_id
      t.integer :candidate_id
      t.date :date
      t.float :amount
      t.string :reason
      t.date :date_created
      t.string :return
      t.float :credit_total

      t.timestamps null: false
    end
  end
end
