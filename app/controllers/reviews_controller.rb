class ReviewsController < ApplicationController
  before_action :set_listing, only: %i[new create]
  before_action :set_review, only: %i[edit update destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @reviews = policy_scope(Review)
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.listing = @listing
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to listing_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @review
  end

  def update
    authorize @review
    @review.update(review_params)
    redirect_to listing_path(@listing)
  end

  def destroy
    authorize @review
    @review.destroy
    redirect_to lising_path(@review.listing), status: :see_other
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
