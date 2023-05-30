module PhotosHelper
  def photo_url(photo_json)
    "https://live.staticflickr.com/#{photo_json["server"]}/#{photo_json["id"]}_#{photo_json["secret"]}.jpg"
  end

  def error_message(json)
    if json["stat"] == "fail"
      json["message"]
    end
  end

  def photos(json)
    if json["stat"] == "ok"
      return json["photos"]["photo"]
    end
  end
end
