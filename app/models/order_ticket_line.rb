# This model defines single line in the OrderTicket. There might be many OrderTicketLines per OrderTicket
class OrderTicketLine < ActiveRecord::Base
	belongs_to :order_ticket
	belongs_to :part
end
