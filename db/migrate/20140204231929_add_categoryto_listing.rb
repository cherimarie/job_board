class AddCategorytoListing < ActiveRecord::Migration
  def change 
    add_reference :listings, :category, index: true
  end
end
