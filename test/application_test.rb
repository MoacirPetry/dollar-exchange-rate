require 'test_helper'

class HomepageControllerTest < ActionController::TestCase

  test 'controller - getting index' do
    get :index
    assert_response :success
    assert_template :index
    assert_template layout: 'layouts/application'
  end

end
