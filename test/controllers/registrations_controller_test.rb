require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "API sign_up" do
    post user_registration_url, params: { user: { email: 'test@gmail.com', password: '123123' } }
    assert_response :success
  end
end
