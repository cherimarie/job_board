class Listing < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true
  validates :description, presence: true
  validates :headquarters, presence: true
  validates :app_instructions, presence: true
  validates :company_name, presence: true
  validates :company_url, presence: true
  validates :company_email, presence: true
  validates :category_id, presence: true

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ? OR description LIKE ? OR company_name LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"] )
    else
      find(:all)
    end
  end
end
