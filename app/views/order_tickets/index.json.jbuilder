json.array!(@order_tickets) do |order_ticket|
  json.extract! order_ticket, :id, :description
  json.url order_ticket_url(order_ticket, format: :json)
end
