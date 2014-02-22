# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create([ { name: 'Design' }, { name: 'Programming' }, 
                  { name: 'Business/Exec' }, { name: 'SystemAdministrator' },
                  { name: 'Copywriter' }, { name: 'Customer Service/Support' }, 
                  { name: 'Miscellaneous' }])

Listing.create([{title: 'Front End Developer', 
                description: 'Makes things interactive and awesome', 
                headquarters: 'Seattle', 
                app_instructions: 'Send an email to bob@example.com.', 
                company_name: 'Wow.com', 
                company_url: 'wow.com', 
                company_email: 'bob@example.com', 
                category_id: 2, approved: true, 
                date_approved: DateTime.new(2014,2,13,19)},
                {title: 'Front End Designer', 
                description: 'Makes things interactive and awesome', 
                headquarters: 'Seattle', 
                app_instructions: 'Send an email to bob@example.com.', 
                company_name: 'Wow.com', 
                company_url: 'wow.com', 
                company_email: 'bob@example.com', 
                category_id: 3, approved: true, 
                date_approved: DateTime.new(2014,2,11,19)},
                {title: 'Bunny Wrangler', 
                description: 'Makes things interactive and awesome', 
                headquarters: 'Seattle', 
                app_instructions: 'Send an email to bob@example.com.', 
                company_name: 'Wow.com', 
                company_url: 'wow.com', 
                company_email: 'bob@example.com', 
                category_id: 1, approved: true, 
                date_approved: DateTime.new(2014,2,5,19)}])

u = User.new
u.email = 'babs@example.com'
u.password = 'badgerparty'
u.password_confirmation = 'badgerparty'
u.save!

