class AddPurchaseToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :purchase_date, :string
  end
end
