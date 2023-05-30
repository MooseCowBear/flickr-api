require 'net/http'

class FlickrService
  def get_photos_by_id(id)
    uri = "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=#{ENV["FLICKR_API_KEY"]}&user_id=#{escaped_id(id)}&format=json&nojsoncallback=1"
    res = Net::HTTP.get(URI(uri))
    JSON.parse(res)
  end

  private

  def escaped_id(id)
    id.sub("@", "%40")
  end
end