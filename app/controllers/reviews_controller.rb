class ReviewsController < ApplicationController

  def show
    @review = Review.find(review_params[:id])
  end

  def new
    @user_id = params[:user_id]
    @book_id = params[:book_id]
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
      params.permit(:review_description, :user_id, :book_id)
    end
    
end
