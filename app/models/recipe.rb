class Recipe < ActiveRecord::Base
	has_attached_file :photo, :styles => { :large => "400x400#", :medium => "300x300#", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
