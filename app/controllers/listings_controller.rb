class ListingsController < ApplicationController
  include ListingsHelper

  before_filter :prepare_categories

  def index
    @listings = Listing.all
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

  private
    def prepare_categories
      @categories = Category.all
    end 

end
