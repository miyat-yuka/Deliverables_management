class CreateDealers < ActiveRecord::Migration[5.2]
  def change
    create_table :dealers do |t|
      t.string :company
      t.string :name
      t.string :kananame

      t.timestamps
    end
  end
end
