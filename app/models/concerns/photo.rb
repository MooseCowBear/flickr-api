class Photo 
  def self.search(search_params)
    unless search_params.empty?
      f = FlickrService.new
      @photo_data = f.get_photos_by_id(search_params[:user_id])
      pp @photo_data
      [@photo_data, true] #this may contain photos but also might contain just failure message
    else
      @photo_data = {}
      [@photo_data, false]
    end
  end
end