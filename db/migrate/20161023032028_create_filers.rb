class CreateFilers < ActiveRecord::Migration
  def change
    create_table :filers do |t|
      t.integer :user_account_id
      t.integer :filer_type_id
      t.integer :state_id
      t.integer :office_held_id
      t.integer :office_sought_id
      t.string :first_name
      t.string :mi
      t.string :last_name
      t.string :committee
      t.string :address
      t.string :secondary_address
      t.integer :suite
      t.string :city
      t.integer :zip_code
      t.string :phone
      t.integer :extension
      t.string :email
      t.date :hand_deliver
      t.date :receive_date
      t.boolean :postmark
      t.boolean :active
      t.date :date_created

      t.timestamps null: false
    end
  end
end
