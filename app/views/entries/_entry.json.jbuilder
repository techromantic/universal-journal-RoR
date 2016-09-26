json.extract! entry, :id, :name, :username, :country, :city, :content, :points, :created_at, :updated_at
json.url entry_url(entry, format: :json)