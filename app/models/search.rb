class Search < ApplicationRecord

  def search_jobs

    jobs = Job.where('status': 'approved')

    jobs = jobs.where(["job_type LIKE?", "%#{job_type}%"]) if job_type.present?
    jobs = jobs.where(["position LIKE?", "%#{position}%"]) if position.present?
    jobs = jobs.where(["location LIKE?", "%#{location}%"]) if location.present?

    return jobs
  end

  def candidates

    candidates = User.joins(:profile).where('role': 'candidate')

    candidates = candidates.profile.where(["name LIKE?", "%#{name}%"]) if job_type.present?
    candidates = candidates.profile.where(["position LIKE?", "%#{position}%"]) if position.present?
    candidates = candidates.profile.where(["location LIKE?", "%#{location}%"]) if location.present?

    return jobs
  end
end
