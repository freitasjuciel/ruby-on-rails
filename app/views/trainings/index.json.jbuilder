json.array!(@trainings) do |training|
  json.extract! training, :id, :name, :series, :repetitions, :time
  json.url training_url(training, format: :json)
end
