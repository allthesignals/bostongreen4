class Activity < ActiveRecord::Base
	self.table_name = 'public.activities'
	self.primary_key = 'id'

	has_and_belongs_to_many :facilities
end
