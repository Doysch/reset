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
      }
    ]

    if params[:query].present?
      @search_coordinates = Geocoder.search(params[:query]).first.coordinates
      search_marker = { lat: @search_coordinates.first, lng: @search_coordinates.last }
      @markers << search_marker

    end
  end

  def index
    @greenspaces = Greenspace.all
    # @greenspaces.
    if params[:query].present?
      $postcode = params[:query]
      @starting_coords = Geocoder.search(params[:query]).first.coordinates
      @greenspaces.each do |greenspace|
        distance_in_miles = Geocoder::Calculations.distance_between(@starting_coords, [greenspace.latitude, greenspace.longitude])
        time = (distance_in_miles * 20).round
        greenspace.distance = time
      end
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
