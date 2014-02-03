class ListingsController < ApplicationController
  include ListingsHelper

  def index
    @listings = Listing.all
  end 

  def show
    @listing = Listing.find(params[:id])
  end 

  def new 
    @listing = Listing.new 
  end 

  def create
    @listing = Listing.new (listing_params)
    @listing.save
  end 

end
