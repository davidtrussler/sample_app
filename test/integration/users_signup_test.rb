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

  test "Valid signup information" do
    assert_difference 'User.count', 1 do
      post users_path, params: {
        user: {
          name: "David Trussler",
          email: "user@valid.com",
          password: "password",
          password_confirmation: "password"
        }
      }
    end

    follow_redirect!
    assert_template 'users/show'
    assert is_logged_in?
  end
end
