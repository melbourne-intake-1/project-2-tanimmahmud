json.extract! social, :id, :network, :username, :user_id, :created_at, :updated_at
json.url social_url(social, format: :json)