class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @walk_stress_levels_before = Walk.where(user: User.where(email: "dave@gmail.com").first).pluck(:updated_at, :stress_level_before).to_h
    @walk_stress_levels_after = Walk.where(user: User.where(email: "dave@gmail.com").first).pluck(:updated_at, :stress_level_after).to_h

    #@walk_stress_levels = Walk.where(user: User.where(email: "dave@gmail.com").first).pluck(:updated_at, :stress_level_before, :stress_level_after)
    #hash_of_stress_levels = {} # loop over the above list. Add the Date as a key to the hash, then add the stress levels before and after as the two values for that key.
  end

  def devise
  end

end
