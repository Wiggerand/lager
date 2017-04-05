module CustomersHelper
	def db(privacypolicy)
		if privacypolicy == true
			"Liegt vor"
		else
			"Fehlt!"
		end
	end
end
