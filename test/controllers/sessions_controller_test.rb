require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "API sign_in" do
    post user_session_url, params: { user: { email: 'test35@gmail.com', password: '123123' } }
    assert_response :success
  end
end
