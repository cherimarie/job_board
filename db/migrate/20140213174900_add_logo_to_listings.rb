class AddLogoToListings < ActiveRecord::Migration
  def change
    add_column :listings, :logo, :string
  end
end
