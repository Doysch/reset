class GreenspacesController < ApplicationController

  def new
    @greenspace = Greenspace.new
  end

  def create
    @greenspace = Greenspace.new(greenspace_params)
    @greenspace.user = current_user
    if @greenspace.save
      redirect_to
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @greenspace = Greenspace.find(params[:id])
  end

  def index
    @greenspace = Greenspace.all
  end

  private

  def average_rating
  end

  def greenspace_params
    params.require(:greenspace).permit(:location, :photo, :name, :description, :average_rating)
  end
end
