class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :programs, inverse_of: :post

  accepts_nested_attributes_for :programs

  validates :facility_name, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true
  validates :tell, presence: true
  validates :registration_date, presence: true
  validates :delivery_date, presence: true
  validates :delivery_note, presence: true
  validates :estimate_sheet, presence: true
end
