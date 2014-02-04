class ListingsController < ApplicationController
  include ListingsHelper

  def index
    @listings = Listing.search(params[:search])
  end 

  def show
    @listing = Listing.find(params[:id])
  end 

  def new 
    @listing = Listing.new 
  end 

  def create
    @listing = Listing.new(listing_params)
    @listing.save
  end 

  def edit
    @listing = Listing.find(params[:id])
  end 

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    flash[:notice] = "Job listing deleted."
    redirect_to listings_path
  end

end
