class AddPostIdToProgram < ActiveRecord::Migration[5.2]
  def change
    add_reference :programs, :post, foreign_key: true
  end
end
