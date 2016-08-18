class Image < ActiveRecord::Base

  belongs_to :listing
  has_attached_file :pic
  validates_attachment_content_type :pic, content_type:  /\Aimage/
end

