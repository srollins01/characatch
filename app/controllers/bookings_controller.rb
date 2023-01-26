class BookingsController < ApplicationController
  before_action :set_listing
  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.listing = @listing
    @booking.user = current_user
    @booking.status = 'pending'
    authorize @booking
    if @booking.save
      redirect_to listings_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :comment, :event_type, :event_address)
  end
end
