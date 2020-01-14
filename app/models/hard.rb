class Hard < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :program, optional: true
  has_many :products, inverse_of: :hard

  accepts_nested_attributes_for :products

  validates :category, presence: true
end
