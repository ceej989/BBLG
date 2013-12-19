class Pverify
	def initialize(pw)
		@password = pw
		@errors = []
	end


	def legit?
		istooshort
		hasinteger
		hascap

		return @errors
	end

	private
		def istooshort
			@errors.push("Password is too short (must be at least 7 characters long)")
		end
		def hasinteger
			@errors.push("Password must contain at least one number")
		end
		def hascap
			@errors.push("Password must contain a capital letter")
		end
end
