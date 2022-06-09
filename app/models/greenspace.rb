class Greenspace < ApplicationRecord
  has_many :reviews
  has_many_attached :photos
end
