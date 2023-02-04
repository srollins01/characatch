class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :autocomplete]
  skip_after_action :verify_policy_scoped, only: [:index]
  skip_after_action :verify_authorized, only: [:autocomplete]
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

  def autocomplete
    # locations = Listing.all.pluck(:mascot_name)
    # mascots = Listing.all.pluck(:location)
    # @search_results = locations.concat(mascots)[1..3]
    # @search_results = Listing.search_by_keyword(params[:query])
    @m_results = Listing.where("mascot_name ilike ?", "%#{params[:q]}%")
    @l_results = Listing.where("location ilike ?", "%#{params[:q]}%")
    render layout: false
  end
end
