class ParkResource < JSONAPI::Resource
	attribute :name

	filter :name

end
