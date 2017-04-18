class PostClip < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :name, :description, :board_id,  presence: true
  validates_integrity_of :attachment
  validates_processing_of :attachment
  validates :attachment, file_size: { less_than_or_equal_to: 10.megabyte }

  def self.clips_by_id(id)
    find_by_id(id)
  end
  def self.clips_by_board(id)
    where("post_clips.board_id = ?", id)
  end

end
