class Program < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :post, optional: true 
  has_many :products, inverse_of: :program, dependent: :destroy

  accepts_nested_attributes_for :products, allow_destroy: true
end
