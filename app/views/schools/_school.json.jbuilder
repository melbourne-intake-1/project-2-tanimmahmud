json.extract! school, :id, :name, :qualification, :start, :end, :notes, :user_id, :created_at, :updated_at
json.url school_url(school, format: :json)