class Experience < ApplicationRecord

  validates :employer, presence:true
  validates :job_title, presence:true
  validates :from, presence: true
  validates :to, presence: true
  validates :responsibilities, presence:true

  belongs_to :user
end
