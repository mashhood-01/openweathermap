module WeathersHelper

  def temp_icon
    icon = @response["weather"][0]['icon']
    "http://openweathermap.org/themes/openweathermap/assets/vendor/owm/img/widgets/#{icon}.png"
  end

  def description
    @response["weather"][0]['description']
  end

  def country
    @response['sys']['country']
  end

  def city
    @response["name"]
  end

  def temperature
    @response['main']['temp']
  end

  def humidity
    @response['main']['humidity']
  end

  def pressure
    @response['main']['pressure']
  end

  def wind
    @response['wind']['speed']
  end
end
