json.array!(@festivals) do |festival|
  json.extract! festival, :id, :name, :start_date, :end_date
  json.url festival_url(festival, format: :json)
end
