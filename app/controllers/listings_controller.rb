class ListingsController < ApplicationController
  def index
    @listing = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
    authorize @listing
  end
end
