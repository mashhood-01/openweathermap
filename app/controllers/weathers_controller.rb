class WeathersController < ApplicationController

  def index
    location = Geocoder.search(Faker::Internet.ip_v4_address).first
    body = HTTParty.get("#{RANDOM_DATA}lat=#{location.latitude}&lon=#{location.longitude}&appid=#{APP_ID}").body
    @response = JSON.parse body
  end
end
