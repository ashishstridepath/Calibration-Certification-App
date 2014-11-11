module MachinesHelper

	def pretty_number(number)
		number ||= 0
		if number >= 1.0 
			return number.round()
		else
			number
		end
	end

	def background(date)
		#TODO Add an Icon instead looks poo
		if date <= Date.today
			"color: red;"
		else
			"color: green;"
		end
	end

end
