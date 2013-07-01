json.array!(@novanet_location_enrollments) do |novanet_location_enrollment|
  json.extract! novanet_location_enrollment, :student_id, :NovanetLocation_id
  json.url novanet_location_enrollment_url(novanet_location_enrollment, format: :json)
end
