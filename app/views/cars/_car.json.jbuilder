json.extract! car, :id, :name, :vin, :make_id, :created_at, :updated_at
json.make Make.find_by_id(car.make.id).name
json.parts car.parts.map { |part| part.name }
json.url car_url(car, format: :json)
