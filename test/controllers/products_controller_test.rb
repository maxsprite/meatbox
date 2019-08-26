require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "access to products list" do
    get products_index_url
    assert :success
  end

  test "products list as valid json" do
    get products_index_url
    if valid_json?(response.body)
      assert true
    else
      assert false
    end
  end

  private
  
  def valid_json?(json)
    JSON.parse(json)
      return true
    rescue JSON::ParserError => e
      return false
  end
end
