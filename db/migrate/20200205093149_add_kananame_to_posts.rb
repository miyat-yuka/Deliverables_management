class AddKananameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :kananame, :string
  end
end
