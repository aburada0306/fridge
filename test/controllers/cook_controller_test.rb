require 'test_helper'

class CookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cook_index_url
    assert_response :success
  end

end
