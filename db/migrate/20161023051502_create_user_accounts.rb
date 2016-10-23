class CreateUserAccounts < ActiveRecord::Migration
  def change
    create_table :user_accounts do |t|
      t.string :password
      t.string :email
      t.date :date_created

      t.timestamps null: false
    end
  end
end
