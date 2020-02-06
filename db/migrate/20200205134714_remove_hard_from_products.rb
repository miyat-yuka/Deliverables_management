class RemoveHardFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_reference :products, :hard, foreign_key: true
  end
end
