module PhotosHelper
  def photo_url(photo_json)
    "https://live.staticflickr.com/#{photo_json["server"]}/#{photo_json["id"]}_#{photo_json["secret"]}.jpg"
  end

  def error_message(photo_json)
    if photo_json["status"] == "fail"
      photo_json["message"]
    end
  end
end
