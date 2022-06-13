class WalksController < ApplicationController

  def new
    @walk = Walk.new
    @greenspace = Greenspace.find(params[:greenspace_id])
  end

  def create
    @walk = Walk.new(walk_params)
    @greenspace = Greenspace.find(params[:greenspace_id])
    @walk.greenspace = @greenspace
    @walk.user = current_user
    @walk.starting_location = $postcode
    if @walk.save
      redirect_to greenspace_walk_path(@greenspace, @walk)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end

  def edit
    @walk = Walk.find(params[:id])
  end

  def update
    @walk = Walk.find(params[:id])
    if @walk.update(walk_params)
      redirect_to greenspace_walk_path(@walk.greenspace, @walk)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def walk_params
    params.require(:walk).permit(:notes, :stress_level_before, :stress_level_after, :starting_location, :music)
  end

end
