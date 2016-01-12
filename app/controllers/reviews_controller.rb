class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
  end

  def create
    @review = Review.new
  end

  def destroy
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
  end

  def edit
  end
end
