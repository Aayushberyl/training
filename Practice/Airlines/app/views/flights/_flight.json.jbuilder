json.extract! flight, :id, :title, :body, :image, :created_at, :updated_at
json.url flight_url(flight, format: :json)
