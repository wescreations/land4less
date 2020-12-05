module PropertiesHelper
	def property_size(property)
		if @property.size.to_i > 5
			"LARGE PROPERTY: #{@property.size}"
		else
			"NORMAL SIZE PROPERTY: #{@property.size}"
		end
  end

	def states
 		states = [" ", "Arizona","Texass","California", "New Mexico", "Nevada", "New York"]
	end

	def monthly
 		monthly = [" ", "$129 Per Month","$229 Per Month","$329 Per Month", "$429 Per Month"]
	end

	def price_group
 		price_group = [" ", "$0 - $1,000","$1,001 - $2,500","$2,501 - $5,000", "$5,001 - $7,500", "$7,501 - $10,000","$10,001 - $20,000", "$20,001 - $35,000", "$35,001 - $50,000", "$50,001 - $75,000"]
	end

	def monthly
 		monthly = [" ", "$129 Per Month","$229 Per Month","$329 Per Month", "$429 Per Month"]
	end

	def acre
		acre = [" ", "0 - .5",".51 - 2","2.01 - 5", "5.01 - 10", "10.01 - 15", "15.01 - 20", "20.01 - 40", "40.01 - 60", "60.01 - 80"]
	end

end
