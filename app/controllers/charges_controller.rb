class ChargesController < ApplicationController

  def new
    @listing = Listing.find_by_payment_token!(params[:token])
  end

  def create
    # Amount in cents
    @amount = 5000
    @listing = Listing.find_by_id(params[:listing_id])

    @listing.update(payment: true) 


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
