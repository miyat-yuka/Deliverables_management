class AddSoftwareToProgram < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :software, :string
  end
end
