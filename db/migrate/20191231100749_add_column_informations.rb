class AddColumnInformations < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :delivery_date, :string
  end
end