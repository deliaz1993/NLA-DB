json.array!(@students) do |student|
  json.extract! student, :school_id, :first_name, :middle_name, :last_name, :gender, :DOB, :race, :phone, :email, :street_address, :city, :state, :zip_code
  json.url student_url(student, format: :json)
end
