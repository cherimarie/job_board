class AddCompanyToListing < ActiveRecord::Migration
  def change
    add_column :listings, :company_name, :string
    add_column :listings, :company_url, :string
    add_column :listings, :company_email, :string
  end
end
