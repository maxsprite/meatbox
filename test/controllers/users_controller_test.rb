require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "redirect to sign_in if doesn't exist auth" do
    get users_my_profile_url
    assert_redirected_to user_session_url
  end

  test "adding product if not auth" do
    post users_add_products_url(user_id: 1, product_id: 1)
    assert_redirected_to user_session_url
  end

  test "adding product if auth" do
    # Fixture user
    user = User.find_by_email('test35@gmail.com')
    product = Product.first

    # Fixture password
    post user_session_url, params: { user: { email: user.email, password: '123123' } }

    # authHeader = response.headers['Authorization']

    post users_add_products_url(user_id: user.id, product_id: product.id)
    assert_response :success
  end
end
