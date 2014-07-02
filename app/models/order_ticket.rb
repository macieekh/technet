class OrderTicket < ActiveRecord::Base
	# has_and_belongs_to_many :parts
	has_many :lines
	has_many :parts, :through => :lines
end
