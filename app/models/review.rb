class Review < ApplicationRecord
  belongs_to :users
  belongs_to :greenspaces
end
