class ImagesController < ApplicationController

    def home
        if params[:user_id]
        flickr = Flickr.new ENV["flickr_api_key"], ENV["flickr_shared_secret"]
        @photos = flickr.photos.search(user_id: params[:user_id])
        end
    end

end
