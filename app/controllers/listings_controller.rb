class ListingsController < ApplicationController
  def index
    @listing = Listing.all
  end
end
