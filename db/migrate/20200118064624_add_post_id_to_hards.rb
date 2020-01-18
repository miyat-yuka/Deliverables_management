class AddPostIdToHards < ActiveRecord::Migration[5.2]
  def change
    add_reference :hards, :post, foreign_key: true
  end
end
