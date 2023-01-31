class BookingsController < ApplicationController
  before_action :set_listing, except: :accept

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
      redirect_to dashboard_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to dashboard_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def accept
    @bookings = Bookings
    authorize @bookings
  end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :comment, :event_type, :event_address)
  end
end
