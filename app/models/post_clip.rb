class PostClip < ApplicationRecord
mount_uploader :attachment, AttachmentUploader
validates :name, :description,  presence: true
validates_integrity_of :attachment
validates_processing_of :attachment

end
