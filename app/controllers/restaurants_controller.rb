class RestaurantsController < ApplicationController
  def index
    response = RestClient.get "https://webservice.recruit.co.jp/hotpepper/gourmet/v1/",
    params: {
        key: ENV['HOTPEPPER_API_KEY'],
        keyword: params[:query],
        format: 'json',
      }

    result = JSON.parse(response.body)
    @restaurants = result.dig('results', 'shop') || []
    @restaurant_info = @restaurants.map { |restaurant| { image: restaurant['photo']['pc']['l'], name: restaurant['name'] } }.compact
  end
end
