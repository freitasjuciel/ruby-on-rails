json.array!(@students) do |student|
  json.extract! student, :id, :name, :age, :brithdate, :phone, :celphone, :observation
  json.url student_url(student, format: :json)
end
