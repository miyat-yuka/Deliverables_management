class AddDetailsToDealers < ActiveRecord::Migration[5.2]
  def change
    add_reference :dealers, :company, foreign_key: { to_table: :companies }
  end
end
