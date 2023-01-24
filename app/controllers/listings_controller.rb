class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @listing = Listing.all
  end
end
