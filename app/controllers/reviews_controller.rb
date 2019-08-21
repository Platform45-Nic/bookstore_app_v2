class ReviewsController < ApplicationController

  def show
    @review = Review.find(review_params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to @review
    else
      render 'new'
    end
  end

  private

  def review_params
    review.require(:review).permit(:review_description, :user_id, :book_id)
  end

end
