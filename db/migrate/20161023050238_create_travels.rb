class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.integer :report_id
      t.integer :entity_id
      t.integer :candidate_id
      t.date :date
      t.string :purpose
      t.date :travel_begin
      t.date :travel_end
      t.string :transportation
      t.string :location
      t.date :date_created

      t.timestamps null: false
    end
  end
end
