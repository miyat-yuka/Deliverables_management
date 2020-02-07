class Dealer < ApplicationRecord
  belongs_to :company
  belongs_to :post, optional: true
end
