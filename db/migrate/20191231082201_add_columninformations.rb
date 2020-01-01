class AddColumninformations < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :estimate_sheet, :string
    add_column :information, :delivery_note, :string
  end
end
