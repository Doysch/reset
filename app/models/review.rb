class Review < ApplicationRecord
  belongs_to :user
  belongs_to :greenspace

  validates :rating, presence: true
end
