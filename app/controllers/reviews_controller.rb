class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @wing = Wing.new
  end

  def create
    @review = Review.create(review_params)
    @wing = Wing.create(wing_params)
    redirect_to @review
  end

  def destroy
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.update(review_params)
    redirect_to @review
  end

  def edit
  end

  private

  def review_params
    params.require(:review).permit(:restaurant, :title, :body, :specials, wings_attributes: [:id, :type, :sauce, :sauce_heat, :sauce_flavor, :texture, :served_with])
  end

 # def wing_params
 #   params.require(:wing).permit(:type, :sauce, :sauce_heat, :sauce_flavor, :texture, :served_with)
 # end
end
