class AddPaymentToListing < ActiveRecord::Migration
  def change
    add_column :listings, :payment, :boolean
    add_column :listings, :payment_token, :string
  end
end
