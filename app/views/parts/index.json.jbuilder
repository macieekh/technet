json.array!(@parts) do |part|
  json.extract! part, :id, :name, :code
  json.url part_url(part, format: :json)
end
