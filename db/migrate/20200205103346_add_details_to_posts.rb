class AddDetailsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :dealer, foreign_key: { to_table: :dealers }
  end
end
