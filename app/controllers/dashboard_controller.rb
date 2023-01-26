class DashboardController < ApplicationController
  def show
    @user_listings = current_user.listings
    @user_bookings = policy_scope(current_user.bookings)
    authorize @user_listings
  end
end
