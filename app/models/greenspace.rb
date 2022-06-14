class Greenspace < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
