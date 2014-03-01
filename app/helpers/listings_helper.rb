module ListingsHelper

  def listing_params
    params.require(:listing).permit(:title, :description, 
                                    :headquarters, :app_instructions, 
                                    :company_name, :company_url, 
                                    :company_email, :category_id,
                                    :approved, :date_approved, 
                                    :logo, :remove_logo, :payment_token,
                                    :payment, :update_listing_logo)

  end 
  
end
