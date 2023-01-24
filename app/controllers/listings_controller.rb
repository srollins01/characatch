class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @listing = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
    authorize @listing
  end
end
