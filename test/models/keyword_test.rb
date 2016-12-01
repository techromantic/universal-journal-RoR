require 'test_helper'

class KeywordTest < ActiveSupport::TestCase

	def setup
		@keyword = Keyword.new(name:"hope")
	end

	test "keyword should be valid" do 
		assert@keyword.valid?
	end

	test "name should be present" do
		@keyword.name = ""
		assert_not @keyword.valid?
	end

	test "name should be unique" do 
		@keyword.save
		keyword2 = Keyword.new(name:"accomplishment")
		assert_not keyword2.valid?
	end

	test "name should not be too long" do 
		@keyword.name = "a" * 26
		assert_not @keyword.valid?
	end 

	test "name should not be too short" do 
		@keyword.name = "aa" * 26
		assert_not @keyword.valid?
	end 
end