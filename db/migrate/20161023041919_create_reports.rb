class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :filer_id
      t.integer :report_type_id
      t.date :submit_date
      t.string :file_name
      t.string :origin
      t.date :campaign_year
      t.string :upload_type
      t.boolean :on_time
      t.boolean :validity
      t.string :signature

      t.timestamps null: false
    end
  end
end
