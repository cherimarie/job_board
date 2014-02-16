class ListingsController < ApplicationController
  include ListingsHelper

  before_filter :prepare_categories
  before_filter :load_listing, only: [:show, :edit, :update, :approve, 
                                      :review, :destroy]

  def index
    @listings = Listing.approved
  end 

  def search
    @listings = Listing.search(params[:search])
  end

  def show
  end 

  def new 
    @listing = Listing.new 
  end 

  def create
    @listing = Listing.create(listing_params)
    redirect_to listing_review_path(@listing)
  end 

  def edit
  end 

  def update 
    update_listing(@listing)
    redirect_to listing_review_path(@listing)
  end 

  def approve
    update_listing(@listing)
    @listing.update(date_approved: Time.now)
    redirect_to admin_path
  end 

  def submit 
    update
  end 

  def destroy
    @listing.destroy
    flash[:notice] = "Job listing deleted."
    redirect_to listings_path
  end

  def admin 
    @listings = Listing.all
  end 

  def review
  end 
 

  private

  def prepare_categories
    @categories = Category.all
  end 

  def update_listing(listing)
    listing.update(listing_params)
  end

  def load_listing
    @listing = Listing.find(params[:id])
  end

end
