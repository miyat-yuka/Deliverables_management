class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string :facility_name, null: false, unique: true, index: true
      t.string :address, null: false
      t.string :tell, null: false
      t.string :registration_date, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end