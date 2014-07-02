class Part < ActiveRecord::Base
	has_and_belongs_to_many :models
	# has_and_belongs_to_many :order_tickets
	has_many :lines
	has_many :order_tickets, :through => :lines
	accepts_nested_attributes_for :models
end
