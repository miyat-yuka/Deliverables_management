class AddPostIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :post, foreign_key: true
  end
end
