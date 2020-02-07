class RemoveDatailsFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :dealer_id, :reference
  end
end
