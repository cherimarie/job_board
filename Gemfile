source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.1'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
#bcrypt encrypts passwords for us. how nice.
gem 'bcrypt-ruby', '~> 3.1.0'
#figaro gives you safe space to store sensitive stuff, like gmail passwords.
#to cofig ENV on heroku, run "rake figaro:heroku"
gem 'figaro'
#carrierwave & rmagick are for file uploads
gem 'carrierwave'
gem 'rmagick'
#fog allows carrierwave to work with S3
gem "fog", "~> 1.3.1"
#stripe for payment processing
gem 'stripe', git: 'https://github.com/stripe/stripe-ruby'
#autoprefixer
gem 'autoprefixer-rails'
#parses markdown input into html
gem 'redcarpet'



group :doc do
  gem 'sdoc', require: false
end

group :test, :development do
  gem 'rspec-rails'
  gem 'sqlite3'
  gem 'capybara'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end


