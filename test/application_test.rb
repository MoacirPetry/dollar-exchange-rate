require 'test_helper'
#require 'rails-controller-testing'

class HomepageControllerTest < ActionDispatch::IntegrationTest

  test 'controller - getting index' do
    get '/homepage/index'
    assert_response :success
    assert_template :index
    assert_template layout: 'layouts/application'
  end

  test 'view - getting data' do
    get '/homepage/index'
    assert_select 'title', 'Dollar Exchange Rate'
    assert_select 'strong', '1 USD - Last 3 days'
    assert_select 'strong', 'BRL'

  test 'routes' do
    assert_routing root_path, controller: 'homepage', action: 'index'
    assert_recognizes({controller: 'homepage', action: 'index'}, {path: 'homepage/index', method: :get})
  end

end
