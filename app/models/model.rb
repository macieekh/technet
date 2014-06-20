class Model < ActiveRecord::Base
	has_and_belongs_to_many :parts
	accepts_nested_attributes_for :parts
end
