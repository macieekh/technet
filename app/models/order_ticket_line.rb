class OrderTicketLine < ActiveRecord::Base
	belongs_to :order_ticket
	belongs_to :part
end
