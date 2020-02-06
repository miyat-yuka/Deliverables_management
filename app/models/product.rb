class Product < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :program, optional: true
  belongs_to :category

  validates :thing, presence: true
end
