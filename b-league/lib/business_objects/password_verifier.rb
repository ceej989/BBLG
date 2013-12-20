class PasswordVerifier

	def initialize(pw)
		@password = pw
		@errors = []
	end


	def legit?
		checks = self.private_methods.find_all {|m| m =~ /^check_if_.*/}
		checks.each do |chk|
			@errors << self.send(chk)
		end
		return @errors
	end

	private
		def check_if_too_short
			@errors.push("Password is too short (must be at least 7 characters long)")
		end

		def check_if_has_integer
			@errors.push("Password must contain at least one number")
		end
		
		def check_if_has_caps
			@errors.push("Password must contain a capital letter")
		end
end
