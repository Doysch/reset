class Greenspace < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  attr_accessor :distance, :distance_for_index

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
