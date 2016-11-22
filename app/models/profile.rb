class Profile < ApplicationRecord
  belongs_to :user

  mount_uploader :image, AvatarUploader
  mount_uploader :resume_file, ResumeUploader
end
