json.array!(@novanet_course_enrollments) do |novanet_course_enrollment|
  json.extract! novanet_course_enrollment, :student_id, :NovanetCourse_id
  json.url novanet_course_enrollment_url(novanet_course_enrollment, format: :json)
end
