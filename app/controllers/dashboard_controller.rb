class DashboardController < ApplicationController
  def show
    @user_listings = current_user.listings
    @user_bookings = policy_scope(current_user.bookings)
    authorize @user_listings
  end

  def booking_update
    @booking = Booking.find(params[:booking][:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def incoming_booking_update
    booking_update
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :comment, :event_type, :event_address, :status)
  end
end
