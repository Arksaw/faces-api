class Face < ActiveRecord::Base
  has_and_belongs_to_many :tags

  has_attached_file :image
  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
