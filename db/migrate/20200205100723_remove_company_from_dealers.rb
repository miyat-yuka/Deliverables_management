class RemoveCompanyFromDealers < ActiveRecord::Migration[5.2]
  def change
    remove_column :dealers, :company, :string
  end
end
