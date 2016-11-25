class Profile < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :title, presence: true
  validates :image, presence: true
  validates :address, presence: true
  validates :description, length: { minimum: 250 }

  mount_uploader :image, AvatarUploader
  mount_uploader :resume_file, ResumeUploader
end
