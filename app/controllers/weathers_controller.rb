class WeathersController < ApplicationController

  def index
    location = Geocoder.search(Faker::Internet.ip_v4_address).first
    body = HTTParty.get("#{RANDOM_DATA}lat=#{location.latitude}&lon=#{location.longitude}&appid=#{APP_ID}").body
    @response = JSON.parse body
  end

  def search
    body = HTTParty.get("#{FIND_BY_CITY_NAME}#{params[:city]},#{params[:country_code]}").body
    @response = JSON.parse body
    @message = @response['message']
  end
end
