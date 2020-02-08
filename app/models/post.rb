class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :programs, inverse_of: :post, dependent: :destroy
  has_one :dealer
  mount_uploader :estimate_sheet, EstimateSheetUploader
  mount_uploader :delivery_note, DeliveryNoteUploader

  accepts_nested_attributes_for :programs, allow_destroy: true
  accepts_nested_attributes_for :dealer, allow_destroy: true

  validates :facility_name, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true
  validates :tell, presence: true
  validates :registration_date, presence: true
  validates :delivery_date, presence: true
  validates :delivery_note, presence: true
  validates :estimate_sheet, presence: true

  def self.search(search)
    if search && search != ""
      words = search.to_s.split("　")

      columns = ["facility_name", "kananame", "address"]
      query = []
      result = []

      columns.each do |column|
        query << ["#{column} LIKE ?"]
      end

      words.each_with_index do |w, index|
        if index == 0
          result[index] = Post.where([query.join(" OR "), "%#{w}%", "%#{w}%", "%#{w}%"])
        else
          result[index] = result[index-1].where([query.join(" OR "), "%#{w}%", "%#{w}%", "%#{w}%"])
        end
      end
      return result[words.length-1]
    else
      Post.all
    end
  end
end