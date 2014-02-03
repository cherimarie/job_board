class Listing < ActiveRecord::Base

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ? OR description LIKE ? OR company_name LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"] )
    else
      find(:all)
    end
  end
end
