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


  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、カラムを部分一致検索
      Post.where(['facility_name LIKE ?', "%#{search}%"])
    else
      Post.all #全て表示。
    end
  end
end
