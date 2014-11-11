module CertificatesHelper

	def tp(capacity,multiplier)
		if capacity
			capacity / 5 * multiplier
		else
			0
		end
	end

end
