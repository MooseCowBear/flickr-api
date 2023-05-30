module PhotosHelper
  def photo_url(photo_json)
    "https://live.staticflickr.com/#{photo_json["server"]}/#{photo_json["id"]}_#{photo_json["secret"]}.jpg"
  end
end
