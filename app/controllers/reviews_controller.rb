class ReviewsController < ApplicationController
  def index
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
