class FacilityResource < JSONAPI::Resource
	attribute :name

	has_one :facility_type
end
