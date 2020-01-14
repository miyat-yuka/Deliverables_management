class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :facility_name, null: false, unique: true, index: true
      t.string :postal_code, null: false
      t.string :address, null: false
      t.string :tell, null: false
      t.string :registration_date, null: false
      t.string :delivery_date, null: false
      t.string :delivery_note, null: false
      t.string :estimate_sheet, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end