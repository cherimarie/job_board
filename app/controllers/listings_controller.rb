class ListingsController < ApplicationController
  include ListingsHelper

  before_filter :prepare_categories

  def index
    @listings = Listing.approved
  end 

  def search
    @listings = Listing.search(params[:search])
  end

  def show
    @listing = Listing.find(params[:id])
  end 

  def new 
    @listing = Listing.new 
  end 

  def create
    @listing = Listing.create(listing_params)
    redirect_to listing_review_path(@listing)
  end 

  def edit
    @listing = Listing.find(params[:id])
  end 

  def update 
    update_listing
    redirect_to listing_review_path(@listing)
  end 

  def approve
    update_listing
    redirect_to admin_path
  end 

  def submit 
    update
  end 

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    flash[:notice] = "Job listing deleted."
    redirect_to listings_path
  end

  def admin 
    @listings = Listing.all
  end 

  def review
    @listing = Listing.find(params[:id])
  end 
 

  private
    def prepare_categories
      @categories = Category.all
    end 

    def update_listing
      @listing = Listing.find(params[:id])
      @listing.update(listing_params)
    end

end
