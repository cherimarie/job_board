source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.1'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
  #carrierwave & rmagick are for file uploads
gem 'carrierwave'
gem 'rmagick'
#fog allows carrierwave to work with S3
gem "fog", "~> 1.3.1"
gem 'figaro'

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


