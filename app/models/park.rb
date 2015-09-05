class Park < ActiveRecord::Base
	self.table_name = 'public.parks'
	self.primary_key = 'id_0'

	def self.filter_by_facility(facility_id)
		Park.where{st_intersects(geom,Facility.find(facility_id).geom)}.first
	end

	def self.filter_by_neighborhood(neighborhood_id)
	end

end
