class PostClip < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, :description,  presence: true
  validates_integrity_of :image
  validates_processing_of :image
end
