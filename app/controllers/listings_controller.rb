class ListingsController < ApplicationController
  include ListingsHelper

  before_filter :prepare_categories
  before_filter :load_listing, only: [:show, :edit, :update, :approve, 
                                      :review, :destroy, :submitter_review, :admin_review]
  before_filter :authorize, only: [:approve]                                     

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
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to submitter_review_path(@listing)
    else 
      redirect_to new_listing_path
      flash[:error] = "Listing has not saved correctly, please try again."
    end 
  end 

  def edit
  end 

  def update 
    update_listing(@listing)
    redirect_to listings_path(@listing)
    flash[:notice] = "Listing has been updated."
  end 

  def approve
    update_listing(@listing)
    @listing.update(date_approved: Time.now)
    if params[:listing][:approved] == "1"
      @listing.send_payment_prompt
    end 
    redirect_to admin_path
  end 

  def destroy
    @listing.destroy
    flash[:notice] = "Job listing deleted."
    redirect_to listings_path
  end

  def admin 
    @listings = Listing.all
  end 

  def submitter_review
     if @listing.approved == true 
      flash[:error] = "That page is not acessible."
      redirect_to listings_path
   end 
  end

  def admin_review
  end

  def live_listing_review
    @listing = Listing.find_by_update_listing_token(params[:token])

    if @listing.nil?
      redirect_to listings_path
      flash[:error] = "That page is not accessible."
    end 
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
