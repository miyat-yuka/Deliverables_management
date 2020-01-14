class AddUserIdToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :user, :string
  end
end
