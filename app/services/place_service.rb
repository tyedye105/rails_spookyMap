class PlaceService

def self.get_places(latitude, longitude, type)
  response = HTTParty.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=500&type=restaurant&keyword=cruise&key=AIzaSyDxze-ax5idzWCI27ryREOS06h-TfEK1gs")
  puts "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{latitude},#{longitude}&radius=500&keyword=#{type}&key=#{ENV['GOOGLE_MAPS_API_KEY']}"
    JSON.parse(response)["geometry"]["location"]
  end
end

  PlaceService.get_places(11.57,43.1207,"resturant")
