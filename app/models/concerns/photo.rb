class Photo 
  def self.search(search_params)
    unless search_params.empty?
      f = FlickrService.new
      @photo_data = f.get_photos_by_id(search_params[:user_id])
    else
      @photo_data = {}
    end
  end
end