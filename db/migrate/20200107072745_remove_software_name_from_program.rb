class RemoveSoftwareNameFromProgram < ActiveRecord::Migration[5.2]
  def change
    remove_column :programs, :software_name, :string
  end
end
