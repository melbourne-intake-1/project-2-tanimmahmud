json.extract! job, :id, :user_id, :job_type, :description, :position, :location, :status, :day, :amount, :created_at, :updated_at
json.url job_url(job, format: :json)