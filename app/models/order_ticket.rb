class OrderTicket < ActiveRecord::Base
	# has_and_belongs_to_many :parts
	has_many :order_ticket_lines
	has_many :parts, :through => :order_ticket_lines
end
