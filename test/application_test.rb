require 'test_helper'
#require 'rails-controller-testing'

class HomepageControllerTest < ActionDispatch::IntegrationTest

  test 'controller - getting index' do
    get '/homepage/index'
    assert_response :success
    assert_template :index
    assert_template layout: 'layouts/application'
  end

  test 'routes' do
    assert_routing root_path, controller: 'homepage', action: 'index'
    assert_recognizes({controller: 'homepage', action: 'index'}, {path: 'homepage/index', method: :get})
  end

end
