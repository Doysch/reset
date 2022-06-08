class Walk < ApplicationRecord
  belongs_to :user
  belongs_to :greenspace

  MUSIC_TYPES = ["Music", "Meditation"]
end
