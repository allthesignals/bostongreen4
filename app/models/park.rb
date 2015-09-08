class Park < ActiveRecord::Base
	self.table_name = 'public.parks'
	self.primary_key = 'id_0'

	def self.filter_by_activity(activity_type_id)
		facilities = Activity.find(activity_type_id).facilities.map(&:id).join(", ")
		query = "SELECT parks.id_0 FROM parks, facilities WHERE facilities.id IN ( #{facilities} ) AND ST_Intersects(parks.geom, facilities.geom)"
		array = Park.find_by_sql(query)
		Park.where(id: array.map(&:id))
	end

	def self.filter_by_neighborhood(neighborhood_id)
	end

end
