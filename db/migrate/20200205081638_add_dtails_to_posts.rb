class AddDtailsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :dealer, :string
  end
end
