class ReviewsController < ApplicationController
  def create
    @property = Property.find(params[:property_id])
    @review = Review.new(review_params)
    @review.property = @restaurant
    if @review.save
      redirect_to property_path(@property)
    else
      render "property/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
