class ParkResource < JSONAPI::Resource
	attributes :name, :description, :address, :phone, :access, :featured, :area

	filters :name, :activity_type
	has_many :park_images

	def self.apply_filter(records, filter, value, options)
	  	case filter
	    	when :activity_type
	    		puts "#{value}"
	      		return records.filter_by_activity(value[0])
	      	else
	      		return super(records, filter, value)
  		end
	end
	# Park.filter_by_facility(options[:context])

end
