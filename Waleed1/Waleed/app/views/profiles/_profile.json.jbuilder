json.extract! profile, :id, :firstname, :lastname, :age, :address, :image_url, :created_at, :updated_at
json.url profile_url(profile, format: :json)
