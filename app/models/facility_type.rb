class FacilityType < ActiveRecord::Base
	self.table_name = 'public.facility_types'
	self.primary_key = 'id'
	has_many :facilities
end
