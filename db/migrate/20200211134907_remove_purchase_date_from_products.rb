class RemovePurchaseDateFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :purchase_date, :integer
  end
end
