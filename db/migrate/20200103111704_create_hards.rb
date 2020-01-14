class CreateHards < ActiveRecord::Migration[5.2]
  def change
    create_table :hards do |t|
      t.string :category
      t.references :user, foreign_key: true
      t.references :program, foreign_key: true
      t.timestamps
    end
  end
end