class Job < ApplicationRecord
  belongs_to :user
  has_one :payment



  def self.search(search)
    if search
      @jobs = Job.where(["job_type LIKE? ","%#{search}%"])
    else
      all
    end
  end
end
