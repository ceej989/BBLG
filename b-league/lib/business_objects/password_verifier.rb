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
<<<<<<< HEAD:b-league/lib/business_objects/Pverify.rb
		def istooshort
			if(@password.length < 7)
				@errors.push("Password is too short (must be at least 7 characters long)")
		end
		def hasinteger
			if(@password.)
=======
		def check_if_too_short
			@errors.push("Password is too short (must be at least 7 characters long)")
		end

		def check_if_has_integer
>>>>>>> e1e28997a14ed91af3c6da9469e5335901e93532:b-league/lib/business_objects/password_verifier.rb
			@errors.push("Password must contain at least one number")
		end
		
		def check_if_has_caps
			@errors.push("Password must contain a capital letter")
		end
end
