require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Test User", email: "user@test.com")
  end

  test "should be valid" do
    assert @user.valid?
  end
end
