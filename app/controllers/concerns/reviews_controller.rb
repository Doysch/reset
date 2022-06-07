class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @greenspace = Greenspace.find(params[:greenspace_id])
  end

  def create
    @review = Review.new(review_params)
    @greenspace = Greenspace.find(params[:greenspace_id])
    @review.greenspace = @greenspace
    @review.user = current_user
    if @booking.save
      redirect_to
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
