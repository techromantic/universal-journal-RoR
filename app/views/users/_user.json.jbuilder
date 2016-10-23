json.extract! user, :id, :username, :email, :password, :country, :city, :points, :languages, :created_at, :updated_at
json.url user_url(user, format: :json)