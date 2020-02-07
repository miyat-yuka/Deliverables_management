class AddPostsToDealers < ActiveRecord::Migration[5.2]
  def change
    add_reference :dealers, :post, foreign_key: true
  end
end
