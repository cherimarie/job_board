#README

Ruby 2.0.0

###App description
 - Landing page is public, list of all approved jobs, with search function.
 - Jobs are organized by category.
 - Jobs are searchable by title, description, or company name. 
 - Job listings may be created by anyone. The form is filled out and submitted, then the listing goes to admin for approval. 
 - Once approved, a link is sent to submitter via SendGrid, requesting their payment info through Stripe. 
 - When payment is recieved, submitter is sent a success email, which includes link to edit or delete their listings via a one-time token.  
 - Admins can log in via Google Oauth to view all listings, approve or reject new submissions, delete active listings (in case of emergency).
 