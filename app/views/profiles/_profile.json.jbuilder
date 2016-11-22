json.extract! profile, :id, :user_id, :name, :title, :image, :description, :resume_file, :address, :state, :created_at, :updated_at
json.url profile_url(profile, format: :json)