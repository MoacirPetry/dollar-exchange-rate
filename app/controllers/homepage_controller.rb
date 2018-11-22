require 'net/http'

class HomepageController < ApplicationController
  def index
    dollar_response = Net::HTTP.get_response(URI.parse('https://api.bcb.gov.br/dados/serie/bcdata.sgs.10813/dados/ultimos/3?formato=json'))
    data = dollar_response.body
    @result = JSON.parse(data)
  end
end
