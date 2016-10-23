class CreateCoverSheets < ActiveRecord::Migration
  def change
    create_table :cover_sheets do |t|
      t.integer :report_id
      t.integer :candidate_id
      t.integer :treasurer_id
      t.integer :election_type_id
      t.integer :officeheld_id
      t.integer :offices_sought_id
      t.date :period_begin
      t.date :period_end
      t.date :election_date
      t.date :created_date

      t.timestamps null: false
    end
  end
end
