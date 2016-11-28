class Profile < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :title, presence: true
  validates :image, presence: true
  validates :address, presence: true
  validates :description, length: { minimum: 250 }
  validate :size_validation, :if => "image?" || "resume_file?"
  



  mount_uploader :image, AvatarUploader
  mount_uploader :resume_file, ResumeUploader

  def size_validation
    errors[:image] << "should be less than 1MB" if image.size > 1.megabytes
    errors[:resume_file] << "should be less than 1MB" if resume_file.size > 1.megabytes
  end
end
