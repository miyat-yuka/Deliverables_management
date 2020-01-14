class Product < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :hard, optional: true

  validates :thing, presence: true
end
