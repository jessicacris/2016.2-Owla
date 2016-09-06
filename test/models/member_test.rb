require 'test_helper'

class MemberTest < ActiveSupport::TestCase
	def setup 
		@member = Member.new(name: "Newest member", email: "testing@email.com", password: "0123456", alias: "nickname")
	end

	test "tem que rodar" do 
		assert @member.valid?
	end
  # test "the truth" do
  #   assert true
  # end
end