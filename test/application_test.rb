require 'net/http'
require 'test_helper'
#require 'rails-controller-testing'

class HomepageControllerTest < ActionDispatch::IntegrationTest

  test 'controller - getting index' do
    get root_path
    assert_response :success
    assert_template :index
    assert_template layout: 'layouts/application'
  end

  test 'view - getting data' do
    get root_path
    assert_select 'title', 'Dollar Exchange Rate'
    assert_select 'strong', '1 USD - Last 3 days'
    assert_select 'strong', 'BRL'
  end

  test 'routes' do
    assert_routing root_path, controller: 'homepage', action: 'index'
    assert_recognizes({controller: 'homepage', action: 'index'}, {path: 'homepage/index', method: :get})
  end

  test 'http content' do
    get root_path
    assert_match 'utf-8', @response.body
    assert_match 'width=device-width, initial-scale=1', @response.body
    assert_equal "text/html", @response.content_type
  end

  test 'api' do
    api = Net::HTTP.get_response(URI.parse('https://api.bcb.gov.br/dados/serie/bcdata.sgs.10813/dados/ultimos/3?formato=json'))
    assert_match api.code, '200'
    assert api.body.present?
    api_json = JSON.parse(api.body)
    assert api_json.present?
  end

end
