class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @listings = policy_scope(Listing)
    @markers = @listings.geocoded.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { listing: listing })
      }
    end
  end

  def show
    @listing = Listing.find(params[:id])
    authorize @listing
    @booking = Booking.new
  end

  def new
    @listing = Listing.new
    authorize @listing
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    authorize @listing
    if @listing.save
      redirect_to dashboard_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:mascot_name, :title, :description, :location, :hourly_rate, :photo)
  end
end
