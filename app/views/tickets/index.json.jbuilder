json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :title, :counter, :issue
  json.url ticket_url(ticket, format: :json)
end
