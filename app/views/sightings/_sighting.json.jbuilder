json.extract! sighting, :id, :date, :time, :latitude, :longitude, :region, :animal_id, :created_at, :updated_at
json.url sighting_url(sighting, format: :json)
