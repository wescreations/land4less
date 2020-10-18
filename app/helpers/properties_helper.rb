module PropertiesHelper
	def property_size(property) 
		if @property.size.to_i > 5
			"LARGE PROPERTY: #{@property.size}"
		else 	
			"NORMAL SIZE PROPERTY: #{@property.size}"
		end
  	end

end
