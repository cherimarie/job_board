class Category < ActiveRecord::Base
  has_many :listings
  validates :name, uniqueness: true 

end
