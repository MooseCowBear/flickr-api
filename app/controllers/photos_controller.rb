class PhotosController < ApplicationController
  def index
    @photo_data = Photo.search(search_params)
  end


  private

  def search_params
    params.permit(:user_id)
  end
end
