class AddUpdateTokenToListing < ActiveRecord::Migration
  def change
    add_column :listings, :update_listing_token, :string
  end
end
