json.array!(@novanet_courses) do |novanet_course|
  json.extract! novanet_course, :name
  json.url novanet_course_url(novanet_course, format: :json)
end
