json.array!(@employees) do |employee|
  json.extract! employee, :first_name, :last_name, :title, :email, :phone, :availability, :comments
  json.url employee_url(employee, format: :json)
end
