class SubmitterMailer < ActionMailer::Base
  default from: "cheri.allen@formidablelabs.com"

  def payment_instructions(listing)
    @listing = listing
    mail to: listing.company_email, subject: "Your listing on DevLocal Jobs"
  end

  def update_listing(listing)
    @listing = listing
    mail to: listing.company_email, subject: "Your listing is live on DevLocal Jobs"
  end

  def thanks(listing)
    @listing = listing 
    mail to: listing.company_email, subject: "Thanks for listing on DevLocal Jobs"
  end 

  def rejection(listing, message)
    @listing = listing
    @message = message 
    mail to: listing.company_email, subject: "Your listing on DevLocal Jobs"
  end
  
end
