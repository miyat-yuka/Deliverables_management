class RemoveUserIdFromPrograms < ActiveRecord::Migration[5.2]
  def change
    remove_column :programs, :user_id, :string
  end
end
