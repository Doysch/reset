class Greenspace < ApplicationRecord
  has_many :reviews
  has_many_attached :photos

  attr_accessor :distance

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
