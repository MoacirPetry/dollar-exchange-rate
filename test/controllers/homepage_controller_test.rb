require 'test_helper'

class HomepageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/homepage/index"
    assert_response :success
  end

end
