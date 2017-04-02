json.extract! person, :id, :name, :zip, :date, :plate, :created_at, :updated_at
json.url person_url(person, format: :json)
