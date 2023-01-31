class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_policy_scoped, only: :index
  def index
    if params[:query].present?
      @listings = Listing.search_by_keyword(params[:query])
    else
      @listings = Listing.all
    end
  end

  def show
    @listing = Listing.find(params[:id])
    authorize @listing
  end
end
