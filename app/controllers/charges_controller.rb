class ChargesController < ApplicationController

  def new
    @listing = Listing.find_by_payment_token(params[:token])

    if @listing.nil?
      redirect_to listings_path
      flash[:error] = "That listing has already been paid for!"
    end 
  end

  def create
    @amount = 5000
    @listing = Listing.find_by_id(params[:listing_id])
    #destroy token so it can only be used once to make a payment
    @listing.update(payment: true, payment_token: nil) 
    @listing.send_update_listing

    customer = Stripe::Customer.create(
      :email => @listing.company_email,
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'DevLocal Jobs Listing',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    @listing.update(payment: false) 
    flash[:error] = e.message
    redirect_to charges_path
  end

end
