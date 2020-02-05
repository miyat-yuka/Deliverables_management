class Products < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :category, foreign_key: { to_table: :categories }
  end
end
