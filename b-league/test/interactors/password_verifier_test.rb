require 'minitest/spec'
require 'minitest/autorun'
require 'pverify'

describe Pverify do
	it "will reject passwords shorter than 7 characters long" do
		p = Pverify.new("test")
		assert_includes(p.legit?, "Password is too short (must be at least 7 characters long)") 
	end
	it "will reject passwords without a capital letter" do
		p = Pverify.new("test")
		assert_includes(p.legit?, "Password must contain a capital letter")
	end
	it "will reject passwords without an integer" do
		p = Pverify.new("test")
		assert_includes(p.legit?, "Password must contain at least one number")
	end
	it "will accept a strong password" do
		p = Pverify.new("Test123")
		assert_empty(p.legit?)
	end
end
