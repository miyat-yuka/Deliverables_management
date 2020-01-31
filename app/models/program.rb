class Program < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :post, optional: true 
  has_many :hards, inverse_of: :program, dependent: :destroy

  accepts_nested_attributes_for :hards, allow_destroy: true
end
