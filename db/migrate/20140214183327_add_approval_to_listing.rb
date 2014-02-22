class AddApprovalToListing < ActiveRecord::Migration
  def change
    add_column :listings, :approved, :boolean
    add_column :listings, :date_approved, :datetime
  end
end
