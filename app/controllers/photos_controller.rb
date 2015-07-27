class PhotosController < ApplicationController
  #before_action :test
  #before_action :authenticate_user! #, only: [:new, :create, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = Photo.find(params[:id])
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end
  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id
    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def get_last_flickr_photo
    flickrAPI = "https://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?"
    animal = 'dog'
    flickr_option = {
        tags: animal,
        format: 'json'
    };

    api_response = HTTParty.get(flickrAPI, :query => flickr_option)
    @json_hash = eval(api_response.parsed_response)
    render :json=> @json_hash[:items] #.merge({exec_fct_a: true})
  end

  def photo_params
    params.require(:photo).permit(:photo_link, :photo_name, :thumb_link, :photo_descript, :photo_tag, :photo_visibility)
  end
end
