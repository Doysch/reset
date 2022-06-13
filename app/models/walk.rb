class Walk < ApplicationRecord
  belongs_to :user
  belongs_to :greenspace

  geocoded_by :starting_location
  after_validation :geocode, if: :will_save_change_to_starting_location?


  MUSIC_TYPES = ["Music", "Meditation"]
end
