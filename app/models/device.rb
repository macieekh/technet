class Device < ActiveRecord::Base
	belongs_to :model
	has_and_belongs_to_many :parts
end
