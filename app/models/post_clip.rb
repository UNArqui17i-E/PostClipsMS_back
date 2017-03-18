class PostClip < ApplicationRecord
mount_uploader :attachment, AttachmentUploader
validates :name, :description,  presence: true
validates_integrity_of :attachment
validates_processing_of :attachment
validates :attachment, file_size: { less_than_or_equal_to: 10.megabyte }
end
