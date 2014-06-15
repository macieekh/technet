json.array!(@devices) do |device|
  json.extract! device, :id, :serial, :location
  json.url device_url(device, format: :json)
end
