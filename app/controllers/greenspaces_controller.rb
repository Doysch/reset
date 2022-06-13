class GreenspacesController < ApplicationController

  def new
    @greenspace = Greenspace.new
  end

  def create
    @greenspace = Greenspace.new(greenspace_params)
    if @greenspace.save
      redirect_to
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @greenspace = Greenspace.find(params[:id])

    @markers = [
      {
        lat: @greenspace.latitude,
        lng: @greenspace.longitude
      }]
  end

  def index
    @greenspaces = Greenspace.all
    if params[:query].present?
      $postcode = params[:query]
    end
    @markers = @greenspaces.geocoded.map do |greenspace|
      {
        lat: greenspace.latitude,
        lng: greenspace.longitude
      }
    end
  end

  private

  def average_rating
  end

  def greenspace_params
    params.require(:greenspace).permit(:address, :name, :description, :average_rating, :review, photos: [])
  end
end
