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

end
