class Job < ApplicationRecord
  belongs_to :user
  has_one :payment

  validates :job_type, presence: true
  validates :description, length: { minimum: 250}
  validates :position, presence: true
  validates :location, presence: true
  validates :status, presence: true
  validates :day, presence: true


  def self.search(search)
    if search
      @jobs = Job.where(["position LIKE? ","%#{search}%"])
    else
      all
    end
  end
end
