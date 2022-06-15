class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @walk_stress_levels_before = Walk.where(user: current_user).pluck(:updated_at, :stress_level_before)
    @walk_stress_levels_before = @walk_stress_levels_before.group_by {|k| k[0].strftime("%d %b, %Y")}.transform_values {|v| v.sum {|entry| entry[1]} / v.size }
    @walk_stress_levels_after = Walk.where(user: current_user).pluck(:updated_at, :stress_level_after)
    @walk_stress_levels_after = @walk_stress_levels_after.group_by {|k| k[0].strftime("%d %b, %Y")}.transform_values {|v| v.sum {|entry| entry[1]} / v.size }
  end

  def devise
  end

end
