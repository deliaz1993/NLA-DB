json.array!(@novanet_locations) do |novanet_location|
  json.extract! novanet_location, :name, :address, :employee_id
  json.url novanet_location_url(novanet_location, format: :json)
end
