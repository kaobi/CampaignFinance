class CreateExpendTypes < ActiveRecord::Migration
  def change
    create_table :expend_types do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
