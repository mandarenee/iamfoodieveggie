class Article < ActiveRecord::Base
	has_attached_file :photo, :styles => { :large => "700x500#", :medium => "300x300#", :thumb => "150x150#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  has_many :text_blocks

  def self.search(query)
		where("body like ? or title like ?", "%#{query}%", "%#{query}%")
	end
end
