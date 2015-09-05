class Facility < ActiveRecord::Base
	self.table_name = 'public.facilities'
	self.primary_key = 'id'

	belongs_to :facility_type
	has_and_belongs_to_many :activities

	attr_accessor :facility_type_name

	def facility_type_name
		self.includes(:facility_types)
	end
end
