require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "Invalid signup information" do
    get signup_path

    assert_no_difference 'User.count' do
      post users_path, params: {
        user: {
          name: "",
          email: "user@invalid",
          password: "short",
          password_confirmation: "long"
        }
      }
    end
    assert_response :unprocessable_entity
    assert_template 'users/new'
  end
end