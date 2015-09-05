class Facility < ActiveRecord::Base
	self.table_name = 'public.facilities'
	self.primary_key = 'id'

	has_and_belongs_to_many :activities
end
