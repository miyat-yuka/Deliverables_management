class AddColumnInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :postal_code, :string
  end
end
